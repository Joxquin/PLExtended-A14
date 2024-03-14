package F2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.C0187y;
import com.android.systemui.shared.R;
import com.google.android.material.textfield.TextInputLayout;
import j2.C1114a;
import j2.C1115b;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class A {

    /* renamed from: a  reason: collision with root package name */
    public final Context f389a;

    /* renamed from: b  reason: collision with root package name */
    public final TextInputLayout f390b;

    /* renamed from: c  reason: collision with root package name */
    public LinearLayout f391c;

    /* renamed from: d  reason: collision with root package name */
    public int f392d;

    /* renamed from: e  reason: collision with root package name */
    public FrameLayout f393e;

    /* renamed from: f  reason: collision with root package name */
    public Animator f394f;

    /* renamed from: g  reason: collision with root package name */
    public final float f395g;

    /* renamed from: h  reason: collision with root package name */
    public int f396h;

    /* renamed from: i  reason: collision with root package name */
    public int f397i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f398j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f399k;

    /* renamed from: l  reason: collision with root package name */
    public AppCompatTextView f400l;

    /* renamed from: m  reason: collision with root package name */
    public CharSequence f401m;

    /* renamed from: n  reason: collision with root package name */
    public int f402n;

    /* renamed from: o  reason: collision with root package name */
    public ColorStateList f403o;

    /* renamed from: p  reason: collision with root package name */
    public CharSequence f404p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f405q;

    /* renamed from: r  reason: collision with root package name */
    public AppCompatTextView f406r;

    /* renamed from: s  reason: collision with root package name */
    public int f407s;

    /* renamed from: t  reason: collision with root package name */
    public ColorStateList f408t;

    public A(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f389a = context;
        this.f390b = textInputLayout;
        this.f395g = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    public final void a(TextView textView, int i4) {
        if (this.f391c == null && this.f393e == null) {
            Context context = this.f389a;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f391c = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f391c;
            TextInputLayout textInputLayout = this.f390b;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f393e = new FrameLayout(context);
            this.f391c.addView(this.f393e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.f8099g != null) {
                b();
            }
        }
        if (i4 == 0 || i4 == 1) {
            this.f393e.setVisibility(0);
            this.f393e.addView(textView);
        } else {
            this.f391c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f391c.setVisibility(0);
        this.f392d++;
    }

    public final void b() {
        LinearLayout linearLayout = this.f391c;
        TextInputLayout textInputLayout = this.f390b;
        if ((linearLayout == null || textInputLayout.f8099g == null) ? false : true) {
            EditText editText = textInputLayout.f8099g;
            Context context = this.f389a;
            boolean d4 = A2.d.d(context);
            LinearLayout linearLayout2 = this.f391c;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            int e4 = C0187y.e(editText);
            if (d4) {
                e4 = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
            }
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
            if (d4) {
                dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
            }
            int d5 = C0187y.d(editText);
            if (d4) {
                d5 = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
            }
            C0187y.h(linearLayout2, e4, dimensionPixelSize, d5, 0);
        }
    }

    public final void c() {
        Animator animator = this.f394f;
        if (animator != null) {
            animator.cancel();
        }
    }

    public final void d(List list, boolean z4, TextView textView, int i4, int i5, int i6) {
        if (textView == null || !z4) {
            return;
        }
        if (i4 == i6 || i4 == i5) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, i6 == i4 ? 1.0f : 0.0f);
            ofFloat.setDuration(167L);
            ofFloat.setInterpolator(C1114a.f10700a);
            ArrayList arrayList = (ArrayList) list;
            arrayList.add(ofFloat);
            if (i6 == i4) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f395g, 0.0f);
                ofFloat2.setDuration(217L);
                ofFloat2.setInterpolator(C1114a.f10703d);
                arrayList.add(ofFloat2);
            }
        }
    }

    public final TextView e(int i4) {
        if (i4 != 1) {
            if (i4 != 2) {
                return null;
            }
            return this.f406r;
        }
        return this.f400l;
    }

    public final void f() {
        this.f398j = null;
        c();
        if (this.f396h == 1) {
            if (!this.f405q || TextUtils.isEmpty(this.f404p)) {
                this.f397i = 0;
            } else {
                this.f397i = 2;
            }
        }
        i(this.f396h, this.f397i, h(this.f400l, ""));
    }

    public final void g(TextView textView, int i4) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f391c;
        if (linearLayout == null) {
            return;
        }
        boolean z4 = true;
        if (i4 != 0 && i4 != 1) {
            z4 = false;
        }
        if (!z4 || (frameLayout = this.f393e) == null) {
            linearLayout.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i5 = this.f392d - 1;
        this.f392d = i5;
        LinearLayout linearLayout2 = this.f391c;
        if (i5 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean h(TextView textView, CharSequence charSequence) {
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        TextInputLayout textInputLayout = this.f390b;
        return androidx.core.view.A.c(textInputLayout) && textInputLayout.isEnabled() && !(this.f397i == this.f396h && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    public final void i(int i4, int i5, boolean z4) {
        TextView e4;
        TextView e5;
        if (i4 == i5) {
            return;
        }
        if (z4) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f394f = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.f405q, this.f406r, 2, i4, i5);
            d(arrayList, this.f399k, this.f400l, 1, i4, i5);
            C1115b.a(animatorSet, arrayList);
            animatorSet.addListener(new y(this, i5, e(i4), i4, e(i5)));
            animatorSet.start();
        } else if (i4 != i5) {
            if (i5 != 0 && (e5 = e(i5)) != null) {
                e5.setVisibility(0);
                e5.setAlpha(1.0f);
            }
            if (i4 != 0 && (e4 = e(i4)) != null) {
                e4.setVisibility(4);
                if (i4 == 1) {
                    e4.setText((CharSequence) null);
                }
            }
            this.f396h = i5;
        }
        TextInputLayout textInputLayout = this.f390b;
        textInputLayout.s();
        textInputLayout.v(z4, false);
        textInputLayout.y();
    }
}
