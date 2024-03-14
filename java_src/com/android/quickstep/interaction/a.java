package com.android.quickstep.interaction;

import com.android.launcher3.anim.AnimatedFloat;
import com.android.quickstep.GestureState;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5662a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AllSetActivity f5663b;

    public /* synthetic */ a(AllSetActivity allSetActivity, int i4) {
        this.f5662a = i4;
        this.f5663b = allSetActivity;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        AnimatedFloat createSwipeUpProxy;
        switch (this.f5662a) {
            case 0:
            default:
                createSwipeUpProxy = this.f5663b.createSwipeUpProxy((GestureState) obj);
                return createSwipeUpProxy;
        }
    }
}
