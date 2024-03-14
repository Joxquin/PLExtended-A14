package com.android.launcher3.model;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.util.IOUtils;
import j.C1080K;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class DbDowngradeHelper {
    private final SparseArray mStatements = new SparseArray();
    public final int version;

    private DbDowngradeHelper(int i4) {
        this.version = i4;
    }

    public static DbDowngradeHelper parse(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            IOUtils.copy(fileInputStream, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            fileInputStream.close();
            JSONObject jSONObject = new JSONObject(new String(byteArray));
            DbDowngradeHelper dbDowngradeHelper = new DbDowngradeHelper(jSONObject.getInt("version"));
            int i4 = dbDowngradeHelper.version;
            while (true) {
                i4--;
                if (i4 <= 0) {
                    return dbDowngradeHelper;
                }
                if (jSONObject.has("downgrade_to_" + i4)) {
                    JSONArray jSONArray = jSONObject.getJSONArray("downgrade_to_" + i4);
                    int length = jSONArray.length();
                    String[] strArr = new String[length];
                    for (int i5 = 0; i5 < length; i5++) {
                        strArr[i5] = jSONArray.getString(i5);
                    }
                    dbDowngradeHelper.mStatements.put(i4, strArr);
                }
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i4, int i5) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            i4--;
            if (i4 < i5) {
                LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(sQLiteDatabase);
                try {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        sQLiteDatabase.execSQL((String) it.next());
                    }
                    sQLiteTransaction.commit();
                    sQLiteTransaction.close();
                    return;
                } catch (Throwable th) {
                    try {
                        sQLiteTransaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            String[] strArr = (String[]) this.mStatements.get(i4);
            if (strArr == null) {
                throw new SQLiteException(C1080K.a("Downgrade path not supported to version ", i4));
            }
            Collections.addAll(arrayList, strArr);
        }
    }
}
