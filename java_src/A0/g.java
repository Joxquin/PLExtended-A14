package A0;

import A0.g;
import B0.b;
import android.content.Context;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.provider.Settings;
import android.util.Log;
import android.window.IDumpCallback;
import com.android.app.viewcapture.SettingsAwareViewCapture$mDumpCallback$1;
import com.google.protobuf.C0773q;
import com.google.protobuf.r;
import e3.f;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import k3.a;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class g extends x {

    /* renamed from: j  reason: collision with root package name */
    public static x f12j;

    /* renamed from: h  reason: collision with root package name */
    public final Context f13h;

    /* renamed from: i  reason: collision with root package name */
    public final SettingsAwareViewCapture$mDumpCallback$1 f14i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.app.viewcapture.SettingsAwareViewCapture$mDumpCallback$1] */
    public g(Context context, Executor executor) {
        super(executor);
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(executor, "executor");
        this.f13h = context;
        this.f14i = new IDumpCallback.Stub() { // from class: com.android.app.viewcapture.SettingsAwareViewCapture$mDumpCallback$1
            public final void onDump(ParcelFileDescriptor out) {
                h.e(out, "out");
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(out);
                    g gVar = g.this;
                    Context context2 = gVar.f13h;
                    if (gVar.f77e) {
                        b exportedData = gVar.getExportedData(context2);
                        exportedData.getClass();
                        int serializedSize = exportedData.getSerializedSize(null);
                        Logger logger = r.f8687b;
                        if (serializedSize > 4096) {
                            serializedSize = 4096;
                        }
                        C0773q c0773q = new C0773q(autoCloseOutputStream, serializedSize);
                        exportedData.writeTo(c0773q);
                        if (c0773q.f8685f > 0) {
                            c0773q.O();
                        }
                    }
                    f fVar = f.f9037a;
                    a.a(autoCloseOutputStream, null);
                } catch (Exception e4) {
                    Log.e(A0.h.f15a, "failed to dump data to wm trace", e4);
                }
            }
        };
        this.f75c.execute(new f(this));
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("view_capture_enabled"), false, new b(this, new Handler()));
    }
}
