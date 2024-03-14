package com.android.systemui.animation;

import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.Log;
import android.view.GhostView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.widget.FrameLayout;
import com.android.internal.jank.InteractionJankMonitor;
import java.util.LinkedList;
/* loaded from: classes.dex */
public final class j implements d {

    /* renamed from: a  reason: collision with root package name */
    public final View f6072a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f6073b;

    /* renamed from: c  reason: collision with root package name */
    public final InteractionJankMonitor f6074c;

    /* renamed from: d  reason: collision with root package name */
    public final ViewGroup f6075d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f6076e;

    /* renamed from: f  reason: collision with root package name */
    public GhostView f6077f;

    /* renamed from: g  reason: collision with root package name */
    public final float[] f6078g;

    /* renamed from: h  reason: collision with root package name */
    public final Matrix f6079h;

    /* renamed from: i  reason: collision with root package name */
    public FrameLayout f6080i;

    /* renamed from: j  reason: collision with root package name */
    public i f6081j;

    /* renamed from: k  reason: collision with root package name */
    public final e3.c f6082k;

    /* renamed from: l  reason: collision with root package name */
    public int f6083l;

    /* renamed from: m  reason: collision with root package name */
    public final int[] f6084m;

    /* renamed from: n  reason: collision with root package name */
    public final n f6085n;

    /* renamed from: o  reason: collision with root package name */
    public final Drawable f6086o;

    public j(View view) {
        InteractionJankMonitor interactionJankMonitor = InteractionJankMonitor.getInstance();
        kotlin.jvm.internal.h.d(interactionJankMonitor, "getInstance()");
        this.f6072a = view;
        Drawable drawable = null;
        this.f6073b = null;
        this.f6074c = interactionJankMonitor;
        View rootView = view.getRootView();
        kotlin.jvm.internal.h.c(rootView, "null cannot be cast to non-null type android.view.ViewGroup");
        this.f6075d = (ViewGroup) rootView;
        this.f6076e = new int[2];
        float[] fArr = new float[9];
        for (int i4 = 0; i4 < 9; i4++) {
            fArr[i4] = 0.0f;
        }
        this.f6078g = fArr;
        this.f6079h = new Matrix();
        this.f6082k = kotlin.a.a(new m3.a() { // from class: com.android.systemui.animation.GhostedViewLaunchAnimatorController$backgroundInsets$2
            {
                super(0);
            }

            @Override // m3.a
            public final Object invoke() {
                Insets opticalInsets;
                Drawable drawable2 = j.this.f6086o;
                return (drawable2 == null || (opticalInsets = drawable2.getOpticalInsets()) == null) ? Insets.NONE : opticalInsets;
            }
        });
        this.f6083l = 255;
        this.f6084m = new int[2];
        this.f6085n = new n(0, 0, 0, 0, 0.0f, 0.0f, 63);
        View view2 = this.f6072a;
        if (!(view2 instanceof t)) {
            throw new IllegalArgumentException("A GhostedViewLaunchAnimatorController was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected.");
        }
        if (view2.getBackground() == null) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(view2);
            while (true) {
                if (!(!linkedList.isEmpty())) {
                    break;
                }
                View view3 = (View) linkedList.removeFirst();
                if (view3.getBackground() != null) {
                    drawable = view3.getBackground();
                    break;
                } else if (view3 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view3;
                    int childCount = viewGroup.getChildCount();
                    for (int i5 = 0; i5 < childCount; i5++) {
                        linkedList.add(viewGroup.getChildAt(i5));
                    }
                }
            }
        } else {
            drawable = view2.getBackground();
        }
        this.f6086o = drawable;
    }

    public final void a(n state) {
        kotlin.jvm.internal.h.e(state, "state");
        View view = this.f6072a;
        int[] iArr = this.f6084m;
        view.getLocationOnScreen(iArr);
        Insets insets = (Insets) this.f6082k.getValue();
        int i4 = iArr[1];
        state.f6091a = insets.top + i4;
        state.f6092b = (n3.a.a(view.getScaleY() * view.getHeight()) + i4) - insets.bottom;
        int i5 = iArr[0];
        state.f6093c = insets.left + i5;
        state.f6094d = (n3.a.a(view.getScaleX() * view.getWidth()) + i5) - insets.right;
    }

    @Override // com.android.systemui.animation.l
    public final n createAnimatorState() {
        float f4;
        GradientDrawable a4;
        GradientDrawable a5;
        View view = this.f6072a;
        Drawable drawable = this.f6086o;
        float f5 = 0.0f;
        if (drawable == null || (a5 = h.a(drawable)) == null) {
            f4 = 0.0f;
        } else {
            float[] cornerRadii = a5.getCornerRadii();
            f4 = view.getScaleX() * (cornerRadii != null ? cornerRadii[0] : a5.getCornerRadius());
        }
        if (drawable != null && (a4 = h.a(drawable)) != null) {
            float[] cornerRadii2 = a4.getCornerRadii();
            f5 = view.getScaleX() * (cornerRadii2 != null ? cornerRadii2[4] : a4.getCornerRadius());
        }
        n nVar = new n(0, 0, 0, 0, f4, f5, 15);
        a(nVar);
        return nVar;
    }

    @Override // com.android.systemui.animation.l
    public final ViewGroup getLaunchContainer() {
        return this.f6075d;
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationEnd(boolean z4) {
        if (this.f6077f == null) {
            return;
        }
        Integer num = this.f6073b;
        if (num != null) {
            this.f6074c.end(num.intValue());
        }
        i iVar = this.f6081j;
        Drawable drawable = iVar != null ? iVar.f6067a : null;
        if (drawable != null) {
            drawable.setAlpha(this.f6083l);
        }
        View view = this.f6072a;
        GhostView.removeGhost(view);
        FrameLayout frameLayout = this.f6080i;
        if (frameLayout != null) {
            ViewGroupOverlay overlay = this.f6075d.getOverlay();
            kotlin.jvm.internal.h.d(overlay, "launchContainer.overlay");
            overlay.remove(frameLayout);
        }
        if (view instanceof t) {
            ((t) view).setShouldBlockVisibilityChanges(false);
            return;
        }
        view.setVisibility(4);
        view.setVisibility(0);
        view.invalidate();
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationProgress(n state, float f4, float f5) {
        kotlin.jvm.internal.h.e(state, "state");
        GhostView ghostView = this.f6077f;
        if (ghostView == null) {
            return;
        }
        FrameLayout frameLayout = this.f6080i;
        kotlin.jvm.internal.h.b(frameLayout);
        boolean z4 = state.f6097g;
        View view = this.f6072a;
        if (!z4 || !view.isAttachedToWindow()) {
            if (ghostView.getVisibility() == 0) {
                ghostView.setVisibility(4);
                view.setTransitionVisibility(4);
                frameLayout.setVisibility(4);
                return;
            }
            return;
        }
        if (ghostView.getVisibility() == 4) {
            ghostView.setVisibility(0);
            frameLayout.setVisibility(0);
        }
        n nVar = this.f6085n;
        a(nVar);
        int i4 = state.f6093c;
        int i5 = nVar.f6093c;
        int i6 = i4 - i5;
        int i7 = state.f6094d;
        int i8 = nVar.f6094d;
        int i9 = i7 - i8;
        int i10 = state.f6091a;
        int i11 = nVar.f6091a;
        int i12 = i10 - i11;
        int i13 = state.f6092b;
        int i14 = nVar.f6092b;
        int i15 = i13 - i14;
        float min = Math.min((i7 - i4) / (i8 - i5), (i13 - i10) / (i14 - i11));
        boolean z5 = view.getParent() instanceof ViewGroup;
        Matrix matrix = this.f6079h;
        ViewGroup viewGroup = this.f6075d;
        if (z5) {
            GhostView.calculateMatrix(view, viewGroup, matrix);
        }
        int[] iArr = this.f6076e;
        viewGroup.getLocationOnScreen(iArr);
        int i16 = nVar.f6093c;
        float f6 = (((nVar.f6094d - i16) / 2.0f) + i16) - iArr[0];
        int i17 = nVar.f6091a;
        matrix.postScale(min, min, f6, (((nVar.f6092b - i17) / 2.0f) + i17) - iArr[1]);
        matrix.postTranslate((i6 + i9) / 2.0f, (i12 + i15) / 2.0f);
        ghostView.setAnimationMatrix(matrix);
        Insets insets = (Insets) this.f6082k.getValue();
        int i18 = state.f6091a - insets.top;
        int i19 = state.f6093c - insets.left;
        int i20 = state.f6094d + insets.right;
        int i21 = state.f6092b + insets.bottom;
        frameLayout.setTop(i18 - iArr[1]);
        frameLayout.setBottom(i21 - iArr[1]);
        frameLayout.setLeft(i19 - iArr[0]);
        frameLayout.setRight(i20 - iArr[0]);
        i iVar = this.f6081j;
        kotlin.jvm.internal.h.b(iVar);
        if (iVar.f6067a != null) {
            float f7 = state.f6095e;
            float f8 = state.f6096f;
            i iVar2 = this.f6081j;
            if (iVar2 != null) {
                float[] fArr = iVar2.f6070d;
                fArr[0] = f7;
                fArr[1] = f7;
                fArr[2] = f7;
                fArr[3] = f7;
                fArr[4] = f8;
                fArr[5] = f8;
                fArr[6] = f8;
                fArr[7] = f8;
                iVar2.invalidateSelf();
            }
        }
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationStart(boolean z4) {
        Matrix matrix;
        View view = this.f6072a;
        if (!(view.getParent() instanceof ViewGroup)) {
            Log.w("GhostedViewLaunchAnimatorController", "Skipping animation as ghostedView is not attached to a ViewGroup");
            return;
        }
        ViewGroup viewGroup = this.f6075d;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        ViewGroupOverlay overlay = viewGroup.getOverlay();
        kotlin.jvm.internal.h.d(overlay, "launchContainer.overlay");
        overlay.add(frameLayout);
        this.f6080i = frameLayout;
        Drawable drawable = this.f6086o;
        this.f6083l = drawable != null ? drawable.getAlpha() : 255;
        i iVar = new i(drawable);
        this.f6081j = iVar;
        FrameLayout frameLayout2 = this.f6080i;
        if (frameLayout2 != null) {
            frameLayout2.setBackground(iVar);
        }
        t tVar = view instanceof t ? (t) view : null;
        if (tVar != null) {
            tVar.setShouldBlockVisibilityChanges(true);
        }
        GhostView addGhost = GhostView.addGhost(view, viewGroup);
        this.f6077f = addGhost;
        if (addGhost == null || (matrix = addGhost.getAnimationMatrix()) == null) {
            matrix = Matrix.IDENTITY_MATRIX;
        }
        matrix.getValues(this.f6078g);
        Integer num = this.f6073b;
        if (num != null) {
            this.f6074c.begin(view, num.intValue());
        }
    }
}
