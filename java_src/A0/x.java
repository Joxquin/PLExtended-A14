package A0;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import com.android.app.viewcapture.data.ExportedData$MagicNumber;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: f  reason: collision with root package name */
    public static final long f71f = (ExportedData$MagicNumber.MAGIC_NUMBER_H.getNumber() << 32) | ExportedData$MagicNumber.MAGIC_NUMBER_L.getNumber();

    /* renamed from: g  reason: collision with root package name */
    public static final a f72g = new a(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    public final Executor f75c;

    /* renamed from: b  reason: collision with root package name */
    public final List f74b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public u f76d = new u();

    /* renamed from: e  reason: collision with root package name */
    public boolean f77e = true;

    /* renamed from: a  reason: collision with root package name */
    public final int f73a = 2000;

    public x(Executor executor) {
        this.f75c = executor;
        executor.execute(new Runnable() { // from class: A0.j

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ int f18e = 300;

            @Override // java.lang.Runnable
            public final void run() {
                x xVar = x.this;
                int i4 = this.f18e;
                xVar.getClass();
                u uVar = new u();
                u uVar2 = uVar;
                int i5 = 0;
                while (i5 < i4) {
                    u uVar3 = new u();
                    uVar2.f57f = uVar3;
                    i5++;
                    uVar2 = uVar3;
                }
                x.f72g.execute(new q(xVar, uVar, uVar2, 0));
            }
        });
    }

    public final l a(View view, String str) {
        final w wVar = new w(this, view, str);
        if (this.f77e) {
            f72g.execute(new Runnable() { // from class: A0.k
                @Override // java.lang.Runnable
                public final void run() {
                    w wVar2 = w.this;
                    wVar2.f68k = true;
                    if (!wVar2.f61d.isAttachedToWindow()) {
                        wVar2.f61d.addOnAttachStateChangeListener(new v(wVar2));
                        return;
                    }
                    wVar2.f61d.getViewTreeObserver().removeOnDrawListener(wVar2);
                    wVar2.f61d.getViewTreeObserver().addOnDrawListener(wVar2);
                }
            });
        }
        ((ArrayList) this.f74b).add(wVar);
        return new l(this, wVar);
    }

    public B0.b getExportedData(Context context) {
        ArrayList arrayList = new ArrayList();
        B0.a g4 = B0.b.g();
        g4.c(f71f);
        g4.d(context.getPackageName());
        final m mVar = new m();
        g4.b((Iterable) CompletableFuture.supplyAsync(new Supplier() { // from class: A0.o
            @Override // java.util.function.Supplier
            public final Object get() {
                x xVar = x.this;
                return xVar.f74b.stream().filter(mVar).toList();
            }
        }, f72g).thenApplyAsync((Function) new p(new s(context.getResources()), arrayList, 0), this.f75c).get());
        g4.a(arrayList.stream().map(new r()).toList());
        g4.e(TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis()) - SystemClock.elapsedRealtimeNanos());
        return (B0.b) g4.build();
    }

    public void stopCapture(View view) {
        ((ArrayList) this.f74b).forEach(new n(0, view));
    }
}
