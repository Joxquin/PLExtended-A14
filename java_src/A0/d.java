package A0;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.FutureTask;
/* loaded from: classes.dex */
public final class d {
    public static x a(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        x xVar = g.f12j;
        if (xVar != null) {
            return xVar;
        }
        if (kotlin.jvm.internal.h.a(Looper.myLooper(), Looper.getMainLooper())) {
            Context applicationContext = context.getApplicationContext();
            kotlin.jvm.internal.h.d(applicationContext, "context.applicationContext");
            HandlerThread handlerThread = new HandlerThread("SAViewCapture", -2);
            handlerThread.start();
            g gVar = new g(applicationContext, new a(handlerThread.getLooper()));
            g.f12j = gVar;
            return gVar;
        }
        a aVar = x.f72g;
        c cVar = new c(context);
        aVar.getClass();
        FutureTask futureTask = new FutureTask(cVar);
        aVar.execute(futureTask);
        x xVar2 = (x) futureTask.get();
        kotlin.jvm.internal.h.d(xVar2, "context: Context): ViewC…    throw e\n            }");
        return xVar2;
    }

    public static /* synthetic */ void getVIEW_CAPTURE_ENABLED$frameworks__libs__systemui__viewcapturelib__android_common__view_capture$annotations() {
    }
}
