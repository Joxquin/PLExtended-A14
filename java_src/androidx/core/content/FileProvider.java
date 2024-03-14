package androidx.core.content;

import B.c;
import C.a;
import C.b;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.constraintlayout.widget.j;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class FileProvider extends ContentProvider {

    /* renamed from: f  reason: collision with root package name */
    public static final String[] f3062f = {"_display_name", "_size"};

    /* renamed from: g  reason: collision with root package name */
    public static final File f3063g = new File("/");

    /* renamed from: h  reason: collision with root package name */
    public static final HashMap f3064h = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public a f3065d;

    /* renamed from: e  reason: collision with root package name */
    public String f3066e;

    public static a b(Context context, String str) {
        a aVar;
        HashMap hashMap = f3064h;
        synchronized (hashMap) {
            aVar = (a) hashMap.get(str);
            if (aVar == null) {
                try {
                    try {
                        aVar = c(context, str);
                        hashMap.put(str, aVar);
                    } catch (XmlPullParserException e4) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e4);
                    }
                } catch (IOException e5) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e5);
                }
            }
        }
        return aVar;
    }

    public static b c(Context context, String str) {
        b bVar = new b(str);
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (resolveContentProvider == null) {
            throw new IllegalArgumentException(j.a("Couldn't find meta-data for provider with authority ", str));
        }
        Bundle bundle = resolveContentProvider.metaData;
        XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
        if (loadXmlMetaData == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            int next = loadXmlMetaData.next();
            if (next == 1) {
                return bVar;
            }
            if (next == 2) {
                String name = loadXmlMetaData.getName();
                File file = null;
                String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                if ("root-path".equals(name)) {
                    file = f3063g;
                } else if ("files-path".equals(name)) {
                    file = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    file = context.getCacheDir();
                } else if ("external-path".equals(name)) {
                    file = Environment.getExternalStorageDirectory();
                } else if ("external-files-path".equals(name)) {
                    Object obj = c.f105a;
                    File[] externalFilesDirs = context.getExternalFilesDirs(null);
                    if (externalFilesDirs.length > 0) {
                        file = externalFilesDirs[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    Object obj2 = c.f105a;
                    File[] externalCacheDirs = context.getExternalCacheDirs();
                    if (externalCacheDirs.length > 0) {
                        file = externalCacheDirs[0];
                    }
                } else if ("external-media-path".equals(name)) {
                    File[] externalMediaDirs = context.getExternalMediaDirs();
                    if (externalMediaDirs.length > 0) {
                        file = externalMediaDirs[0];
                    }
                }
                if (file == null) {
                    continue;
                } else {
                    String str2 = new String[]{attributeValue2}[0];
                    if (str2 != null) {
                        file = new File(file, str2);
                    }
                    if (TextUtils.isEmpty(attributeValue)) {
                        throw new IllegalArgumentException("Name must not be empty");
                    }
                    try {
                        bVar.f124b.put(attributeValue, file.getCanonicalFile());
                    } catch (IOException e4) {
                        throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e4);
                    }
                }
            }
        }
    }

    public final a a() {
        a aVar;
        synchronized (this) {
            if (this.f3065d == null) {
                this.f3065d = b(getContext(), this.f3066e);
            }
            aVar = this.f3065d;
        }
        return aVar;
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        this.f3066e = providerInfo.authority.split(";")[0];
        HashMap hashMap = f3064h;
        synchronized (hashMap) {
            hashMap.remove(this.f3066e);
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return a().a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        File a4 = a().a(uri);
        int lastIndexOf = a4.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(a4.getName().substring(lastIndexOf + 1));
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
        }
        return "application/octet-stream";
    }

    public final String getTypeAnonymous(Uri uri) {
        return "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        int i4;
        File a4 = a().a(uri);
        if ("r".equals(str)) {
            i4 = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i4 = 738197504;
        } else if ("wa".equals(str)) {
            i4 = 704643072;
        } else if ("rw".equals(str)) {
            i4 = 939524096;
        } else if (!"rwt".equals(str)) {
            throw new IllegalArgumentException(j.a("Invalid mode: ", str));
        } else {
            i4 = 1006632960;
        }
        return ParcelFileDescriptor.open(a4, i4);
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i4;
        File a4 = a().a(uri);
        String queryParameter = uri.getQueryParameter("displayName");
        if (strArr == null) {
            strArr = f3062f;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i5 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i5] = "_display_name";
                i4 = i5 + 1;
                objArr[i5] = queryParameter == null ? a4.getName() : queryParameter;
            } else if ("_size".equals(str3)) {
                strArr3[i5] = "_size";
                i4 = i5 + 1;
                objArr[i5] = Long.valueOf(a4.length());
            }
            i5 = i4;
        }
        String[] strArr4 = new String[i5];
        System.arraycopy(strArr3, 0, strArr4, 0, i5);
        Object[] objArr2 = new Object[i5];
        System.arraycopy(objArr, 0, objArr2, 0, i5);
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr2);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
