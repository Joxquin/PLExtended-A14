package g0;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import com.android.systemui.shared.R;
import java.util.HashMap;
/* renamed from: g0.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0939h extends x {

    /* renamed from: C  reason: collision with root package name */
    public static final String[] f9420C = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: B  reason: collision with root package name */
    public int f9421B;

    public C0939h() {
        this.f9421B = 3;
    }

    public static float N(F f4, float f5) {
        Float f6;
        return (f4 == null || (f6 = (Float) f4.f9374a.get("android:fade:transitionAlpha")) == null) ? f5 : f6.floatValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static g0.S O(g0.F r8, g0.F r9) {
        /*
            g0.S r0 = new g0.S
            r0.<init>()
            r1 = 0
            r0.f9395a = r1
            r0.f9396b = r1
            java.lang.String r2 = "android:visibility:parent"
            r3 = 0
            r4 = -1
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L31
            java.util.Map r6 = r8.f9374a
            java.util.HashMap r6 = (java.util.HashMap) r6
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L31
            java.lang.Object r7 = r6.get(r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r0.f9397c = r7
            java.lang.Object r6 = r6.get(r2)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.f9399e = r6
            goto L35
        L31:
            r0.f9397c = r4
            r0.f9399e = r3
        L35:
            if (r9 == 0) goto L56
            java.util.Map r6 = r9.f9374a
            java.util.HashMap r6 = (java.util.HashMap) r6
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L56
            java.lang.Object r3 = r6.get(r5)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r0.f9398d = r3
            java.lang.Object r2 = r6.get(r2)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f9400f = r2
            goto L5a
        L56:
            r0.f9398d = r4
            r0.f9400f = r3
        L5a:
            r2 = 1
            if (r8 == 0) goto L8e
            if (r9 == 0) goto L8e
            int r8 = r0.f9397c
            int r9 = r0.f9398d
            if (r8 != r9) goto L6c
            android.view.ViewGroup r3 = r0.f9399e
            android.view.ViewGroup r4 = r0.f9400f
            if (r3 != r4) goto L6c
            goto La3
        L6c:
            if (r8 == r9) goto L7c
            if (r8 != 0) goto L75
            r0.f9396b = r1
            r0.f9395a = r2
            goto La3
        L75:
            if (r9 != 0) goto La3
            r0.f9396b = r2
            r0.f9395a = r2
            goto La3
        L7c:
            android.view.ViewGroup r8 = r0.f9400f
            if (r8 != 0) goto L85
            r0.f9396b = r1
            r0.f9395a = r2
            goto La3
        L85:
            android.view.ViewGroup r8 = r0.f9399e
            if (r8 != 0) goto La3
            r0.f9396b = r2
            r0.f9395a = r2
            goto La3
        L8e:
            if (r8 != 0) goto L99
            int r8 = r0.f9398d
            if (r8 != 0) goto L99
            r0.f9396b = r2
            r0.f9395a = r2
            goto La3
        L99:
            if (r9 != 0) goto La3
            int r8 = r0.f9397c
            if (r8 != 0) goto La3
            r0.f9396b = r1
            r0.f9395a = r2
        La3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: g0.C0939h.O(g0.F, g0.F):g0.S");
    }

    public final void L(F f4) {
        View view = f4.f9375b;
        int visibility = view.getVisibility();
        HashMap hashMap = (HashMap) f4.f9374a;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        hashMap.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    public final Animator M(View view, float f4, float f5) {
        if (f4 == f5) {
            return null;
        }
        N n4 = I.f9382a;
        view.setTransitionAlpha(f4);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, I.f9383b, f5);
        C0938g c0938g = new C0938g(view);
        ofFloat.addListener(c0938g);
        p().a(c0938g);
        return ofFloat;
    }

    @Override // g0.x
    public final void e(F f4) {
        L(f4);
    }

    @Override // g0.x
    public final void h(F f4) {
        L(f4);
        View view = f4.f9375b;
        Float f5 = (Float) view.getTag(R.id.transition_pause_alpha);
        if (f5 == null) {
            if (view.getVisibility() == 0) {
                N n4 = I.f9382a;
                f5 = Float.valueOf(view.getTransitionAlpha());
            } else {
                f5 = Float.valueOf(0.0f);
            }
        }
        ((HashMap) f4.f9374a).put("android:fade:transitionAlpha", f5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
        if (O(o(r3, false), s(r3, false)).f9395a != false) goto L90;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a5  */
    @Override // g0.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator l(android.view.ViewGroup r20, g0.F r21, g0.F r22) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g0.C0939h.l(android.view.ViewGroup, g0.F, g0.F):android.animation.Animator");
    }

    @Override // g0.x
    public final /* bridge */ /* synthetic */ String[] r() {
        return f9420C;
    }

    @Override // g0.x
    public final boolean u(F f4, F f5) {
        if ((f4 != null || f5 != null) && (f4 == null || f5 == null || ((HashMap) f5.f9374a).containsKey("android:visibility:visibility") == ((HashMap) f4.f9374a).containsKey("android:visibility:visibility"))) {
            S O3 = O(f4, f5);
            if (O3.f9395a && (O3.f9397c == 0 || O3.f9398d == 0)) {
                return true;
            }
        }
        return false;
    }

    public C0939h(int i4) {
        this.f9421B = 3;
        if ((i4 & (-4)) == 0) {
            this.f9421B = i4;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }
}
