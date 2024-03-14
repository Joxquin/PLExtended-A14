package androidx.dynamicanimation.animation;

import android.util.FloatProperty;
/* loaded from: classes.dex */
public final class p extends q {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ FloatProperty f3210a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(String str, FloatProperty floatProperty) {
        super(str);
        this.f3210a = floatProperty;
    }

    @Override // androidx.dynamicanimation.animation.q
    public final float getValue(Object obj) {
        return ((Float) this.f3210a.get(obj)).floatValue();
    }

    @Override // androidx.dynamicanimation.animation.q
    public final void setValue(Object obj, float f4) {
        this.f3210a.setValue(obj, f4);
    }
}
