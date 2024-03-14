package com.android.quickstep;

import com.android.launcher3.anim.AnimatedFloat;
import com.android.quickstep.TouchInteractionService;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class O1 implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5504a;

    public /* synthetic */ O1(int i4) {
        this.f5504a = i4;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        AnimatedFloat lambda$setSwipeUpProxy$25;
        AnimatedFloat lambda$new$0;
        switch (this.f5504a) {
            case 0:
                lambda$new$0 = TouchInteractionService.lambda$new$0((GestureState) obj);
                return lambda$new$0;
            default:
                lambda$setSwipeUpProxy$25 = TouchInteractionService.TISBinder.lambda$setSwipeUpProxy$25((GestureState) obj);
                return lambda$setSwipeUpProxy$25;
        }
    }
}
