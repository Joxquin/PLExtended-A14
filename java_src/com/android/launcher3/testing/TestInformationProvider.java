package com.android.launcher3.testing;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.android.launcher3.Utilities;
/* loaded from: classes.dex */
public class TestInformationProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        if (Utilities.isRunningInTestHarness()) {
            TestInformationHandler newInstance = TestInformationHandler.newInstance(getContext());
            newInstance.init(getContext());
            Bundle call = newInstance.call(str, str2, bundle);
            if (call == null) {
                Log.e("TestInformationProvider", "Couldn't handle method: " + str + "; current handler=" + newInstance.getClass().getSimpleName());
            }
            return call;
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
