package com.android.systemui.unfold.config;

import android.content.res.Resources;
import e3.c;
import u1.InterfaceC1423a;
/* loaded from: classes.dex */
public final class a implements InterfaceC1423a {

    /* renamed from: a  reason: collision with root package name */
    public final c f6252a = kotlin.a.a(new m3.a() { // from class: com.android.systemui.unfold.config.ResourceUnfoldTransitionConfig$isEnabled$2
        @Override // m3.a
        public final Object invoke() {
            return Boolean.valueOf(Resources.getSystem().getBoolean(Resources.getSystem().getIdentifier("config_unfoldTransitionEnabled", "bool", "android")));
        }
    });

    /* renamed from: b  reason: collision with root package name */
    public final c f6253b = kotlin.a.a(new m3.a() { // from class: com.android.systemui.unfold.config.ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2
        @Override // m3.a
        public final Object invoke() {
            return Boolean.valueOf(Resources.getSystem().getBoolean(Resources.getSystem().getIdentifier("config_unfoldTransitionHingeAngle", "bool", "android")));
        }
    });

    /* renamed from: c  reason: collision with root package name */
    public final c f6254c = kotlin.a.a(new m3.a() { // from class: com.android.systemui.unfold.config.ResourceUnfoldTransitionConfig$halfFoldedTimeoutMillis$2
        @Override // m3.a
        public final Object invoke() {
            return Integer.valueOf(Resources.getSystem().getInteger(Resources.getSystem().getIdentifier("config_unfoldTransitionHalfFoldedTimeout", "integer", "android")));
        }
    });

    @Override // u1.InterfaceC1423a
    public final boolean isEnabled() {
        return ((Boolean) this.f6252a.getValue()).booleanValue();
    }
}
