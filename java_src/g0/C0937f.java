package g0;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: g0.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0937f extends x {

    /* renamed from: B  reason: collision with root package name */
    public static final String[] f9412B = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: C  reason: collision with root package name */
    public static final C0933b f9413C = new C0933b(PointF.class, "topLeft", 0);

    /* renamed from: D  reason: collision with root package name */
    public static final C0933b f9414D = new C0933b(PointF.class, "bottomRight", 1);

    /* renamed from: E  reason: collision with root package name */
    public static final C0933b f9415E = new C0933b(PointF.class, "bottomRight", 2);

    /* renamed from: F  reason: collision with root package name */
    public static final C0933b f9416F = new C0933b(PointF.class, "topLeft", 3);

    /* renamed from: G  reason: collision with root package name */
    public static final C0933b f9417G = new C0933b(PointF.class, "position", 4);

    public final void L(F f4) {
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        View view = f4.f9375b;
        if (!androidx.core.view.A.c(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        HashMap hashMap = (HashMap) f4.f9374a;
        hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        hashMap.put("android:changeBounds:parent", view.getParent());
    }

    @Override // g0.x
    public final void e(F f4) {
        L(f4);
    }

    @Override // g0.x
    public final void h(F f4) {
        L(f4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g0.x
    public final Animator l(ViewGroup viewGroup, F f4, F f5) {
        ObjectAnimator ofObject;
        if (f4 == null || f5 == null) {
            return null;
        }
        Map map = f4.f9374a;
        Map map2 = f5.f9374a;
        HashMap hashMap = (HashMap) map;
        ViewGroup viewGroup2 = (ViewGroup) hashMap.get("android:changeBounds:parent");
        HashMap hashMap2 = (HashMap) map2;
        ViewGroup viewGroup3 = (ViewGroup) hashMap2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        Rect rect = (Rect) hashMap.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) hashMap2.get("android:changeBounds:bounds");
        int i4 = rect.left;
        int i5 = rect2.left;
        int i6 = rect.top;
        int i7 = rect2.top;
        int i8 = rect.right;
        int i9 = rect2.right;
        int i10 = rect.bottom;
        int i11 = rect2.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        Rect rect3 = (Rect) hashMap.get("android:changeBounds:clip");
        Rect rect4 = (Rect) hashMap2.get("android:changeBounds:clip");
        int i16 = 0;
        if ((i12 != 0 && i13 != 0) || (i14 != 0 && i15 != 0)) {
            if (i4 != i5 || i6 != i7) {
                i16 = 1;
            }
            if (i8 != i9 || i10 != i11) {
                i16++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i16++;
        }
        int i17 = i16;
        if (i17 > 0) {
            N n4 = I.f9382a;
            View view = f5.f9375b;
            view.setLeftTopRightBottom(i4, i6, i8, i10);
            if (i17 == 2) {
                if (i12 == i14 && i13 == i15) {
                    this.f9471x.getClass();
                    ofObject = ObjectAnimator.ofObject(view, f9417G, (TypeConverter) null, C0947p.a(i4, i6, i5, i7));
                } else {
                    C0936e c0936e = new C0936e(view);
                    this.f9471x.getClass();
                    ObjectAnimator ofObject2 = ObjectAnimator.ofObject(c0936e, f9413C, (TypeConverter) null, C0947p.a(i4, i6, i5, i7));
                    this.f9471x.getClass();
                    ObjectAnimator ofObject3 = ObjectAnimator.ofObject(c0936e, f9414D, (TypeConverter) null, C0947p.a(i8, i10, i9, i11));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ofObject2, ofObject3);
                    animatorSet.addListener(new C0934c(c0936e));
                    ofObject = animatorSet;
                }
            } else if (i4 == i5 && i6 == i7) {
                this.f9471x.getClass();
                ofObject = ObjectAnimator.ofObject(view, f9415E, (TypeConverter) null, C0947p.a(i8, i10, i9, i11));
            } else {
                this.f9471x.getClass();
                ofObject = ObjectAnimator.ofObject(view, f9416F, (TypeConverter) null, C0947p.a(i4, i6, i5, i7));
            }
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                viewGroup4.suppressLayout(true);
                p().a(new C0935d(viewGroup4));
            }
            return ofObject;
        }
        return null;
    }

    @Override // g0.x
    public final String[] r() {
        return f9412B;
    }
}
