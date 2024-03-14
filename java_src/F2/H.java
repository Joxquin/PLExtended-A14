package F2;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.C0187y;
import com.android.systemui.shared.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;
import k.R0;
import x2.C1485w;
/* loaded from: classes.dex */
public final class H extends LinearLayout {

    /* renamed from: d  reason: collision with root package name */
    public final TextInputLayout f423d;

    /* renamed from: e  reason: collision with root package name */
    public final AppCompatTextView f424e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f425f;

    /* renamed from: g  reason: collision with root package name */
    public final CheckableImageButton f426g;

    /* renamed from: h  reason: collision with root package name */
    public ColorStateList f427h;

    /* renamed from: i  reason: collision with root package name */
    public PorterDuff.Mode f428i;

    /* renamed from: j  reason: collision with root package name */
    public View.OnLongClickListener f429j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f430k;

    public H(TextInputLayout textInputLayout, R0 r02) {
        super(textInputLayout.getContext());
        CharSequence k4;
        this.f423d = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f426g = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f424e = appCompatTextView;
        if (A2.d.d(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.f429j;
        checkableImageButton.setOnClickListener(null);
        x.c(checkableImageButton, onLongClickListener);
        this.f429j = null;
        checkableImageButton.setOnLongClickListener(null);
        x.c(checkableImageButton, null);
        if (r02.l(62)) {
            this.f427h = A2.d.b(getContext(), r02, 62);
        }
        if (r02.l(63)) {
            this.f428i = C1485w.b(r02.h(63, -1), null);
        }
        if (r02.l(61)) {
            Drawable e4 = r02.e(61);
            checkableImageButton.setImageDrawable(e4);
            if (e4 != null) {
                x.a(textInputLayout, checkableImageButton, this.f427h, this.f428i);
                if (!(checkableImageButton.getVisibility() == 0)) {
                    checkableImageButton.setVisibility(0);
                    a();
                    b();
                }
                x.b(textInputLayout, checkableImageButton, this.f427h);
            } else {
                if (checkableImageButton.getVisibility() == 0) {
                    checkableImageButton.setVisibility(8);
                    a();
                    b();
                }
                View.OnLongClickListener onLongClickListener2 = this.f429j;
                checkableImageButton.setOnClickListener(null);
                x.c(checkableImageButton, onLongClickListener2);
                this.f429j = null;
                checkableImageButton.setOnLongClickListener(null);
                x.c(checkableImageButton, null);
                if (checkableImageButton.getContentDescription() != null) {
                    checkableImageButton.setContentDescription(null);
                }
            }
            if (r02.l(60) && checkableImageButton.getContentDescription() != (k4 = r02.k(60))) {
                checkableImageButton.setContentDescription(k4);
            }
            boolean a4 = r02.a(59, true);
            if (checkableImageButton.f7984h != a4) {
                checkableImageButton.f7984h = a4;
                checkableImageButton.sendAccessibilityEvent(0);
            }
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.A.e(appCompatTextView, 1);
        appCompatTextView.setTextAppearance(r02.i(55, 0));
        if (r02.l(56)) {
            appCompatTextView.setTextColor(r02.b(56));
        }
        CharSequence k5 = r02.k(54);
        this.f425f = TextUtils.isEmpty(k5) ? null : k5;
        appCompatTextView.setText(k5);
        b();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    public final void a() {
        EditText editText = this.f423d.f8099g;
        if (editText == null) {
            return;
        }
        int i4 = 0;
        if (!(this.f426g.getVisibility() == 0)) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            i4 = C0187y.e(editText);
        }
        AppCompatTextView appCompatTextView = this.f424e;
        int compoundPaddingTop = editText.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = editText.getCompoundPaddingBottom();
        WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
        C0187y.h(appCompatTextView, i4, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    public final void b() {
        int i4 = (this.f425f == null || this.f430k) ? 8 : 0;
        setVisibility(this.f426g.getVisibility() == 0 || i4 == 0 ? 0 : 8);
        this.f424e.setVisibility(i4);
        this.f423d.r();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        a();
    }
}
