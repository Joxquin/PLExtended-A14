package F2;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.android.systemui.shared.R;
import com.google.android.material.internal.CheckableImageButton;
import j2.C1114a;
/* renamed from: F2.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0007f extends w {

    /* renamed from: e  reason: collision with root package name */
    public EditText f445e;

    /* renamed from: f  reason: collision with root package name */
    public final View$OnClickListenerC0004c f446f;

    /* renamed from: g  reason: collision with root package name */
    public final View$OnFocusChangeListenerC0005d f447g;

    /* renamed from: h  reason: collision with root package name */
    public AnimatorSet f448h;

    /* renamed from: i  reason: collision with root package name */
    public ValueAnimator f449i;

    /* JADX WARN: Type inference failed for: r1v1, types: [F2.c] */
    /* JADX WARN: Type inference failed for: r1v2, types: [F2.d] */
    public C0007f(v vVar) {
        super(vVar);
        this.f446f = new View.OnClickListener() { // from class: F2.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0007f c0007f = C0007f.this;
                EditText editText = c0007f.f445e;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                c0007f.q();
            }
        };
        this.f447g = new View.OnFocusChangeListener() { // from class: F2.d
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z4) {
                C0007f c0007f = C0007f.this;
                c0007f.t(c0007f.u());
            }
        };
    }

    @Override // F2.w
    public final void a() {
        if (this.f498b.f489p != null) {
            return;
        }
        t(u());
    }

    @Override // F2.w
    public final int c() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // F2.w
    public final int d() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // F2.w
    public final View.OnFocusChangeListener e() {
        return this.f447g;
    }

    @Override // F2.w
    public final View.OnClickListener f() {
        return this.f446f;
    }

    @Override // F2.w
    public final View.OnFocusChangeListener g() {
        return this.f447g;
    }

    @Override // F2.w
    public final void m(EditText editText) {
        this.f445e = editText;
        this.f497a.f8097f.h(u());
    }

    @Override // F2.w
    public final void p(boolean z4) {
        if (this.f498b.f489p == null) {
            return;
        }
        t(z4);
    }

    @Override // F2.w
    public final void r() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(C1114a.f10703d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: F2.b

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ C0007f f440e;

            {
                this.f440e = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (r2) {
                    case 0:
                        C0007f c0007f = this.f440e;
                        c0007f.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0007f.f500d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                    default:
                        C0007f c0007f2 = this.f440e;
                        c0007f2.getClass();
                        c0007f2.f500d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = C1114a.f10700a;
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(100L);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: F2.b

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ C0007f f440e;

            {
                this.f440e = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (r2) {
                    case 0:
                        C0007f c0007f = this.f440e;
                        c0007f.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0007f.f500d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                    default:
                        C0007f c0007f2 = this.f440e;
                        c0007f2.getClass();
                        c0007f2.f500d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f448h = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.f448h.addListener(new C0006e(this, 0));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(100L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: F2.b

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ C0007f f440e;

            {
                this.f440e = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (r2) {
                    case 0:
                        C0007f c0007f = this.f440e;
                        c0007f.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0007f.f500d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                    default:
                        C0007f c0007f2 = this.f440e;
                        c0007f2.getClass();
                        c0007f2.f500d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                }
            }
        });
        this.f449i = ofFloat3;
        ofFloat3.addListener(new C0006e(this, 1));
    }

    @Override // F2.w
    public final void s() {
        EditText editText = this.f445e;
        if (editText != null) {
            editText.post(new Runnable() { // from class: F2.a
                @Override // java.lang.Runnable
                public final void run() {
                    C0007f.this.t(true);
                }
            });
        }
    }

    public final void t(boolean z4) {
        boolean z5 = this.f498b.d() == z4;
        if (z4 && !this.f448h.isRunning()) {
            this.f449i.cancel();
            this.f448h.start();
            if (z5) {
                this.f448h.end();
            }
        } else if (z4) {
        } else {
            this.f448h.cancel();
            this.f449i.start();
            if (z5) {
                this.f449i.end();
            }
        }
    }

    public final boolean u() {
        EditText editText = this.f445e;
        return editText != null && (editText.hasFocus() || this.f500d.hasFocus()) && this.f445e.getText().length() > 0;
    }
}
