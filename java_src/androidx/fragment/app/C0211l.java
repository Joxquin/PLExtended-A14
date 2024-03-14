package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.android.systemui.shared.R;
/* renamed from: androidx.fragment.app.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0211l extends C0213m {

    /* renamed from: c  reason: collision with root package name */
    public final boolean f3428c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3429d;

    /* renamed from: e  reason: collision with root package name */
    public Q f3430e;

    public C0211l(S0 s02, I.d dVar, boolean z4) {
        super(s02, dVar);
        this.f3428c = z4;
    }

    public final Q c(Context context) {
        Animation loadAnimation;
        Q q4;
        Q q5;
        if (this.f3429d) {
            return this.f3430e;
        }
        S0 s02 = this.f3431a;
        K k4 = s02.f3334c;
        boolean z4 = false;
        boolean z5 = s02.f3332a == SpecialEffectsController$Operation$State.VISIBLE;
        int nextTransition = k4.getNextTransition();
        int popEnterAnim = this.f3428c ? z5 ? k4.getPopEnterAnim() : k4.getPopExitAnim() : z5 ? k4.getEnterAnim() : k4.getExitAnim();
        k4.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = k4.mContainer;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            k4.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = k4.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation onCreateAnimation = k4.onCreateAnimation(nextTransition, z5, popEnterAnim);
            if (onCreateAnimation != null) {
                q5 = new Q(onCreateAnimation);
            } else {
                Animator onCreateAnimator = k4.onCreateAnimator(nextTransition, z5, popEnterAnim);
                if (onCreateAnimator != null) {
                    q5 = new Q(onCreateAnimator);
                } else {
                    if (popEnterAnim == 0 && nextTransition != 0) {
                        popEnterAnim = nextTransition != 4097 ? nextTransition != 8194 ? nextTransition != 8197 ? nextTransition != 4099 ? nextTransition != 4100 ? -1 : z5 ? T.a(16842936, context) : T.a(16842937, context) : z5 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit : z5 ? T.a(16842938, context) : T.a(16842939, context) : z5 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit : z5 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                    }
                    if (popEnterAnim != 0) {
                        boolean equals = "anim".equals(context.getResources().getResourceTypeName(popEnterAnim));
                        if (equals) {
                            try {
                                loadAnimation = AnimationUtils.loadAnimation(context, popEnterAnim);
                            } catch (Resources.NotFoundException e4) {
                                throw e4;
                            } catch (RuntimeException unused) {
                            }
                            if (loadAnimation != null) {
                                q4 = new Q(loadAnimation);
                                q5 = q4;
                            } else {
                                z4 = true;
                            }
                        }
                        if (!z4) {
                            try {
                                Animator loadAnimator = AnimatorInflater.loadAnimator(context, popEnterAnim);
                                if (loadAnimator != null) {
                                    q4 = new Q(loadAnimator);
                                    q5 = q4;
                                }
                            } catch (RuntimeException e5) {
                                if (equals) {
                                    throw e5;
                                }
                                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, popEnterAnim);
                                if (loadAnimation2 != null) {
                                    q5 = new Q(loadAnimation2);
                                }
                            }
                        }
                    }
                }
            }
            this.f3430e = q5;
            this.f3429d = true;
            return q5;
        }
        q5 = null;
        this.f3430e = q5;
        this.f3429d = true;
        return q5;
    }
}
