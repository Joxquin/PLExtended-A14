package F2;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.C0186x;
import com.android.systemui.shared.R;
import com.google.android.material.textfield.TextInputLayout;
import j2.C1114a;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class q extends w {

    /* renamed from: e  reason: collision with root package name */
    public AutoCompleteTextView f459e;

    /* renamed from: f  reason: collision with root package name */
    public final View$OnClickListenerC0010i f460f;

    /* renamed from: g  reason: collision with root package name */
    public final View$OnFocusChangeListenerC0011j f461g;

    /* renamed from: h  reason: collision with root package name */
    public final C0012k f462h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f463i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f464j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f465k;

    /* renamed from: l  reason: collision with root package name */
    public long f466l;

    /* renamed from: m  reason: collision with root package name */
    public AccessibilityManager f467m;

    /* renamed from: n  reason: collision with root package name */
    public ValueAnimator f468n;

    /* renamed from: o  reason: collision with root package name */
    public ValueAnimator f469o;

    /* JADX WARN: Type inference failed for: r3v1, types: [F2.i] */
    /* JADX WARN: Type inference failed for: r3v2, types: [F2.j] */
    public q(v vVar) {
        super(vVar);
        this.f460f = new View.OnClickListener() { // from class: F2.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                q.this.u();
            }
        };
        this.f461g = new View.OnFocusChangeListener() { // from class: F2.j
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z4) {
                q qVar = q.this;
                qVar.f463i = z4;
                qVar.q();
                if (z4) {
                    return;
                }
                qVar.t(false);
                qVar.f464j = false;
            }
        };
        this.f462h = new C0012k(this);
        this.f466l = Long.MAX_VALUE;
    }

    @Override // F2.w
    public final void a() {
        if (this.f467m.isTouchExplorationEnabled()) {
            if ((this.f459e.getInputType() != 0) && !this.f500d.hasFocus()) {
                this.f459e.dismissDropDown();
            }
        }
        this.f459e.post(new Runnable() { // from class: F2.m
            @Override // java.lang.Runnable
            public final void run() {
                q qVar = q.this;
                boolean isPopupShowing = qVar.f459e.isPopupShowing();
                qVar.t(isPopupShowing);
                qVar.f464j = isPopupShowing;
            }
        });
    }

    @Override // F2.w
    public final int c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // F2.w
    public final int d() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // F2.w
    public final View.OnFocusChangeListener e() {
        return this.f461g;
    }

    @Override // F2.w
    public final View.OnClickListener f() {
        return this.f460f;
    }

    @Override // F2.w
    public final C0012k h() {
        return this.f462h;
    }

    @Override // F2.w
    public final boolean i(int i4) {
        return i4 != 0;
    }

    @Override // F2.w
    public final boolean j() {
        return this.f463i;
    }

    @Override // F2.w
    public final boolean l() {
        return this.f465k;
    }

    @Override // F2.w
    public final void m(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f459e = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: F2.n
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                q qVar = q.this;
                qVar.getClass();
                if (motionEvent.getAction() == 1) {
                    long currentTimeMillis = System.currentTimeMillis() - qVar.f466l;
                    if (currentTimeMillis < 0 || currentTimeMillis > 300) {
                        qVar.f464j = false;
                    }
                    qVar.u();
                    qVar.f464j = true;
                    qVar.f466l = System.currentTimeMillis();
                }
                return false;
            }
        });
        this.f459e.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: F2.o
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                q qVar = q.this;
                qVar.f464j = true;
                qVar.f466l = System.currentTimeMillis();
                qVar.t(false);
            }
        });
        this.f459e.setThreshold(0);
        TextInputLayout textInputLayout = this.f497a;
        v vVar = textInputLayout.f8097f;
        vVar.f479f.setImageDrawable(null);
        vVar.k();
        x.a(vVar.f477d, vVar.f479f, vVar.f480g, vVar.f481h);
        if (!(editText.getInputType() != 0) && this.f467m.isTouchExplorationEnabled()) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            C0186x.o(this.f500d, 2);
        }
        textInputLayout.f8097f.h(true);
    }

    @Override // F2.w
    public final void n(M.e eVar) {
        if (!(this.f459e.getInputType() != 0)) {
            eVar.h(Spinner.class.getName());
        }
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        if (accessibilityNodeInfo.isShowingHintText()) {
            accessibilityNodeInfo.setHintText(null);
        }
    }

    @Override // F2.w
    public final void o(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 1 && this.f467m.isEnabled()) {
            if (this.f459e.getInputType() != 0) {
                return;
            }
            u();
            this.f464j = true;
            this.f466l = System.currentTimeMillis();
        }
    }

    @Override // F2.w
    public final void r() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = C1114a.f10700a;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(67);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: F2.l
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                q qVar = q.this;
                qVar.getClass();
                qVar.f500d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f469o = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(50);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: F2.l
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                q qVar = q.this;
                qVar.getClass();
                qVar.f500d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f468n = ofFloat2;
        ofFloat2.addListener(new C0017p(this));
        this.f467m = (AccessibilityManager) this.f499c.getSystemService("accessibility");
    }

    @Override // F2.w
    public final void s() {
        AutoCompleteTextView autoCompleteTextView = this.f459e;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f459e.setOnDismissListener(null);
        }
    }

    public final void t(boolean z4) {
        if (this.f465k != z4) {
            this.f465k = z4;
            this.f469o.cancel();
            this.f468n.start();
        }
    }

    public final void u() {
        if (this.f459e == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f466l;
        if (currentTimeMillis < 0 || currentTimeMillis > 300) {
            this.f464j = false;
        }
        if (this.f464j) {
            this.f464j = false;
            return;
        }
        t(!this.f465k);
        if (!this.f465k) {
            this.f459e.dismissDropDown();
            return;
        }
        this.f459e.requestFocus();
        this.f459e.showDropDown();
    }
}
