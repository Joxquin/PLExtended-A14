package T1;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.protobuf.S;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class b extends g {

    /* renamed from: f  reason: collision with root package name */
    public static final Uri f1694f = Uri.parse("content://com.google.android.googlequicksearchbox.GsaPublicContentProvider/publicvalue").buildUpon().appendPath("qsb.superg.animation").build();

    public b(Context context) {
        super(-202, context, "com.google.android.googlequicksearchbox");
    }

    public static boolean g(z3.c cVar) {
        boolean z4;
        if (cVar.c() <= 0.0f || cVar.d() < 0 || cVar.g() < 0 || TextUtils.isEmpty(cVar.i()) || !cVar.m()) {
            return false;
        }
        S<z3.e> e4 = cVar.b().e();
        if (!e4.isEmpty()) {
            loop0: for (z3.e eVar : e4) {
                if (eVar.c() != 0) {
                    for (z3.b bVar : eVar.d()) {
                        if (bVar == null) {
                        }
                    }
                }
            }
            z4 = true;
            return !z4 ? false : false;
        }
        z4 = false;
        return !z4 ? false : false;
    }

    @Override // T1.g
    public final Uri b() {
        return f1694f;
    }

    @Override // T1.g
    public final List d() {
        ContentResolver contentResolver = this.f1703c.getContentResolver();
        Uri uri = f1694f;
        try {
            ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
            Cursor query = acquireUnstableContentProviderClient == null ? null : acquireUnstableContentProviderClient.query(uri, null, null, null, null);
            if (query != null && query.getCount() >= 1) {
                int columnIndexOrThrow = query.getColumnIndexOrThrow("value");
                query.moveToNext();
                z3.c o4 = z3.c.o(Base64.decode(query.getString(columnIndexOrThrow), 3));
                if (!g(o4)) {
                    List emptyList = Collections.emptyList();
                    query.close();
                    if (acquireUnstableContentProviderClient != null) {
                        acquireUnstableContentProviderClient.close();
                    }
                    return emptyList;
                }
                Uri parse = Uri.parse(o4.i());
                query.close();
                if (acquireUnstableContentProviderClient != null) {
                    acquireUnstableContentProviderClient.close();
                }
                try {
                    InputStream openInputStream = contentResolver.openInputStream(parse);
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    byte[] bArr = new byte[1024];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int read = openInputStream.read(bArr, 0, 1024);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(byteArray, 4, byteArray.length - 4, options);
                    openInputStream.close();
                    if (decodeByteArray == null || decodeByteArray.getWidth() <= 0 || decodeByteArray.getHeight() <= 0) {
                        Log.e("DoodleDataLoader", "Invalid sprite image");
                        return Collections.emptyList();
                    }
                    return Collections.singletonList(new a(o4, decodeByteArray));
                } catch (Exception e4) {
                    Log.e("DoodleDataLoader", "Could not retrieve Doodle spritesheet", e4);
                    return Collections.emptyList();
                }
            }
            List emptyList2 = Collections.emptyList();
            if (query != null) {
                query.close();
            }
            if (acquireUnstableContentProviderClient != null) {
                acquireUnstableContentProviderClient.close();
            }
            return emptyList2;
        } catch (Exception e5) {
            Log.e("DoodleDataLoader", "Error fetching doodle", e5);
            return Collections.emptyList();
        }
    }

    @Override // T1.g
    public final void e(List list) {
        String i4 = !list.isEmpty() ? ((a) list.get(0)).f1692d.i() : "";
        Context context = this.f1703c;
        SharedPreferences sharedPreferences = context.getSharedPreferences("dynamic_qsb_prefs", 0);
        if (!i4.equals(sharedPreferences.getString("qsb.superg.animation", ""))) {
            sharedPreferences.edit().putString("qsb.superg.animation", i4).apply();
            boolean z4 = P1.f.f1544y;
            context.getSharedPreferences("pref_doodle_starts", 0).edit().clear().apply();
        }
        Collections.singletonList("com.google.android.googlequicksearchbox").forEach(new c(this, 1));
    }
}
