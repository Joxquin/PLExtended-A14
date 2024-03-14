package A0;

import android.view.View;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class n implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f22a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f23b;

    public /* synthetic */ n(int i4, Object obj) {
        this.f22a = i4;
        this.f23b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        t tVar;
        t tVar2;
        t tVar3;
        switch (this.f22a) {
            case 0:
                View view = (View) this.f23b;
                w wVar = (w) obj;
                View view2 = wVar.f61d;
                if (view == view2) {
                    view2.getViewTreeObserver().removeOnDrawListener(wVar);
                    wVar.f61d = null;
                    return;
                }
                return;
            default:
                w wVar2 = (w) this.f23b;
                u uVar = (u) obj;
                wVar2.getClass();
                long j4 = uVar.f59h;
                int i4 = wVar2.f64g + 1;
                wVar2.f64g = i4;
                if (i4 >= wVar2.f70m.f73a) {
                    wVar2.f64g = 0;
                }
                long[] jArr = wVar2.f66i;
                int i5 = wVar2.f64g;
                jArr[i5] = j4;
                t tVar4 = wVar2.f67j[i5];
                u uVar2 = uVar;
                t tVar5 = null;
                t tVar6 = null;
                while (true) {
                    if (tVar4 == null) {
                        tVar = tVar4;
                        tVar4 = new t();
                    } else {
                        tVar = tVar4.f54t;
                        tVar4.f54t = null;
                    }
                    if (uVar2.f56e < 0) {
                        int hashCode = uVar2.f55d.hashCode();
                        int i6 = wVar2.f64g;
                        if (i6 == 0) {
                            i6 = wVar2.f70m.f73a;
                        }
                        tVar2 = wVar2.f67j[i6 - 1];
                        while (tVar2 != null && tVar2.f36b != hashCode) {
                            tVar2 = tVar2.f54t;
                        }
                        uVar2.f56e = tVar2 != null ? tVar2.f37c : 0;
                    } else {
                        tVar2 = null;
                    }
                    tVar4.f37c = uVar2.f56e;
                    View view3 = uVar2.f55d;
                    uVar2.f55d = null;
                    tVar4.f35a = view3.getClass();
                    tVar4.f36b = view3.hashCode();
                    tVar4.f38d = view3.getId();
                    tVar4.f39e = view3.getLeft();
                    tVar4.f40f = view3.getTop();
                    tVar4.f41g = view3.getRight();
                    tVar4.f42h = view3.getBottom();
                    tVar4.f43i = view3.getScrollX();
                    tVar4.f44j = view3.getScrollY();
                    tVar4.f45k = view3.getTranslationX();
                    tVar4.f46l = view3.getTranslationY();
                    tVar4.f47m = view3.getScaleX();
                    tVar4.f48n = view3.getScaleY();
                    tVar4.f49o = view3.getAlpha();
                    tVar4.f50p = view3.getElevation();
                    tVar4.f51q = view3.getVisibility();
                    tVar4.f52r = view3.willNotDraw();
                    if (tVar5 == null) {
                        tVar5 = tVar4;
                    } else {
                        tVar6.f54t = tVar4;
                    }
                    if (tVar2 != null) {
                        int i7 = tVar2.f37c;
                        while (i7 > 0) {
                            tVar2 = tVar2.f54t;
                            int i8 = tVar2.f37c;
                            i7 = (i7 - 1) + i8;
                            if (tVar == null) {
                                tVar3 = tVar;
                                tVar = new t();
                            } else {
                                tVar3 = tVar.f54t;
                                tVar.f54t = null;
                            }
                            tVar.f35a = tVar2.f35a;
                            tVar.f36b = tVar2.f36b;
                            tVar.f37c = i8;
                            tVar.f38d = tVar2.f38d;
                            tVar.f39e = tVar2.f39e;
                            tVar.f40f = tVar2.f40f;
                            tVar.f41g = tVar2.f41g;
                            tVar.f42h = tVar2.f42h;
                            tVar.f43i = tVar2.f43i;
                            tVar.f44j = tVar2.f44j;
                            tVar.f47m = tVar2.f47m;
                            tVar.f48n = tVar2.f48n;
                            tVar.f45k = tVar2.f45k;
                            tVar.f46l = tVar2.f46l;
                            tVar.f49o = tVar2.f49o;
                            tVar.f51q = tVar2.f51q;
                            tVar.f52r = tVar2.f52r;
                            tVar.f53s = tVar2.f53s;
                            tVar.f50p = tVar2.f50p;
                            tVar4.f54t = tVar;
                            tVar4 = tVar;
                            tVar = tVar3;
                        }
                    }
                    tVar6 = tVar4;
                    tVar4 = tVar;
                    u uVar3 = uVar2.f57f;
                    if (uVar3 == null) {
                        x.f72g.execute(new q(wVar2, uVar, uVar2, 1));
                        wVar2.f67j[wVar2.f64g] = tVar5;
                        return;
                    }
                    uVar2 = uVar3;
                }
                break;
        }
    }
}
