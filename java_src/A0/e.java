package A0;

import android.view.View;
import java.util.ArrayList;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f9d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f10e;

    public e(g gVar, boolean z4) {
        this.f9d = gVar;
        this.f10e = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g gVar = this.f9d;
        gVar.f77e = this.f10e;
        ArrayList arrayList = (ArrayList) gVar.f74b;
        arrayList.forEach(new Consumer() { // from class: A0.i
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r1) {
                    case 0:
                        w wVar = (w) obj;
                        wVar.f68k = false;
                        View view = wVar.f61d;
                        if (view != null) {
                            view.getViewTreeObserver().removeOnDrawListener(wVar);
                            return;
                        }
                        return;
                    default:
                        w wVar2 = (w) obj;
                        wVar2.f68k = true;
                        if (!wVar2.f61d.isAttachedToWindow()) {
                            wVar2.f61d.addOnAttachStateChangeListener(new v(wVar2));
                            return;
                        }
                        wVar2.f61d.getViewTreeObserver().removeOnDrawListener(wVar2);
                        wVar2.f61d.getViewTreeObserver().addOnDrawListener(wVar2);
                        return;
                }
            }
        });
        if (gVar.f77e) {
            arrayList.forEach(new Consumer() { // from class: A0.i
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    switch (r1) {
                        case 0:
                            w wVar = (w) obj;
                            wVar.f68k = false;
                            View view = wVar.f61d;
                            if (view != null) {
                                view.getViewTreeObserver().removeOnDrawListener(wVar);
                                return;
                            }
                            return;
                        default:
                            w wVar2 = (w) obj;
                            wVar2.f68k = true;
                            if (!wVar2.f61d.isAttachedToWindow()) {
                                wVar2.f61d.addOnAttachStateChangeListener(new v(wVar2));
                                return;
                            }
                            wVar2.f61d.getViewTreeObserver().removeOnDrawListener(wVar2);
                            wVar2.f61d.getViewTreeObserver().addOnDrawListener(wVar2);
                            return;
                    }
                }
            });
        }
    }
}
