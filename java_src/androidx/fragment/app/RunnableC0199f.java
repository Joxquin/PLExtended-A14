package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import java.util.List;
/* renamed from: androidx.fragment.app.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0199f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3405d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f3406e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f3407f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f3408g;

    public /* synthetic */ RunnableC0199f(C0221q c0221q, View view, C0211l c0211l) {
        this.f3405d = 2;
        this.f3408g = c0221q;
        this.f3406e = view;
        this.f3407f = c0211l;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3405d) {
            case 0:
                List awaitingContainerChanges = (List) this.f3406e;
                S0 operation = (S0) this.f3407f;
                kotlin.jvm.internal.h.e(awaitingContainerChanges, "$awaitingContainerChanges");
                kotlin.jvm.internal.h.e(operation, "$operation");
                kotlin.jvm.internal.h.e((C0221q) this.f3408g, "this$0");
                if (awaitingContainerChanges.contains(operation)) {
                    awaitingContainerChanges.remove(operation);
                    View view = operation.f3334c.mView;
                    SpecialEffectsController$Operation$State specialEffectsController$Operation$State = operation.f3332a;
                    kotlin.jvm.internal.h.d(view, "view");
                    specialEffectsController$Operation$State.a(view);
                    return;
                }
                return;
            case 1:
                J0 impl = (J0) this.f3406e;
                Rect lastInEpicenterRect = (Rect) this.f3408g;
                kotlin.jvm.internal.h.e(impl, "$impl");
                kotlin.jvm.internal.h.e(lastInEpicenterRect, "$lastInEpicenterRect");
                J0.g((View) this.f3407f, lastInEpicenterRect);
                return;
            default:
                C0221q this$0 = (C0221q) this.f3408g;
                C0211l animationInfo = (C0211l) this.f3407f;
                kotlin.jvm.internal.h.e(this$0, "this$0");
                kotlin.jvm.internal.h.e(animationInfo, "$animationInfo");
                this$0.f3349a.endViewTransition((View) this.f3406e);
                animationInfo.a();
                return;
        }
    }

    public /* synthetic */ RunnableC0199f(Object obj, Object obj2, Object obj3, int i4) {
        this.f3405d = i4;
        this.f3406e = obj;
        this.f3407f = obj2;
        this.f3408g = obj3;
    }
}
