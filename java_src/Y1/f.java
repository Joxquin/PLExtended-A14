package Y1;

import android.content.Context;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.util.IOUtils;
import com.android.systemui.shared.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import v.C1429e;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final int f2287a;

    /* renamed from: b  reason: collision with root package name */
    public final Alarm f2288b = new Alarm();

    /* renamed from: c  reason: collision with root package name */
    public V2.a f2289c;

    public f(Context context, int i4) {
        this.f2287a = i4;
        try {
            File[] listFiles = context.getCacheDir().listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    String name = file.getName();
                    if (file.isFile() && name.endsWith(".cdb") && name.startsWith("categories_v")) {
                        if (!name.endsWith("categories_v" + this.f2287a + ".cdb")) {
                            file.delete();
                        }
                    }
                }
            }
            final File a4 = a(context);
            this.f2289c = new V2.a(a4.getAbsolutePath());
            this.f2288b.setOnAlarmListener(new OnAlarmListener(a4) { // from class: Y1.e
                @Override // com.android.launcher3.OnAlarmListener
                public final void onAlarm(Alarm alarm) {
                    f fVar = f.this;
                    V2.a aVar = fVar.f2289c;
                    if (aVar != null) {
                        try {
                            aVar.f1861a.close();
                            aVar.f1861a = null;
                        } catch (IOException unused) {
                        }
                    }
                    fVar.f2289c = null;
                }
            });
        } catch (IOException unused) {
        }
    }

    public final File a(Context context) {
        File file = new File(context.getCacheDir(), C1429e.a(new StringBuilder("categories_v"), this.f2287a, ".cdb"));
        if (file.exists()) {
            return file;
        }
        InputStream openRawResource = context.getResources().openRawResource(R.raw.categories);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            IOUtils.copy(openRawResource, fileOutputStream);
            fileOutputStream.close();
            if (openRawResource != null) {
                openRawResource.close();
            }
            return file;
        } catch (Throwable th) {
            if (openRawResource != null) {
                try {
                    openRawResource.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
