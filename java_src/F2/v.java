package F2;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import com.android.systemui.shared.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import f.C0832a;
import j.C1080K;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import k.R0;
import x2.C1485w;
/* loaded from: classes.dex */
public final class v extends LinearLayout {

    /* renamed from: d  reason: collision with root package name */
    public final TextInputLayout f477d;

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f478e;

    /* renamed from: f  reason: collision with root package name */
    public final CheckableImageButton f479f;

    /* renamed from: g  reason: collision with root package name */
    public ColorStateList f480g;

    /* renamed from: h  reason: collision with root package name */
    public PorterDuff.Mode f481h;

    /* renamed from: i  reason: collision with root package name */
    public final CheckableImageButton f482i;

    /* renamed from: j  reason: collision with root package name */
    public final u f483j;

    /* renamed from: k  reason: collision with root package name */
    public int f484k;

    /* renamed from: l  reason: collision with root package name */
    public final LinkedHashSet f485l;

    /* renamed from: m  reason: collision with root package name */
    public ColorStateList f486m;

    /* renamed from: n  reason: collision with root package name */
    public PorterDuff.Mode f487n;

    /* renamed from: o  reason: collision with root package name */
    public View.OnLongClickListener f488o;

    /* renamed from: p  reason: collision with root package name */
    public CharSequence f489p;

    /* renamed from: q  reason: collision with root package name */
    public final AppCompatTextView f490q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f491r;

    /* renamed from: s  reason: collision with root package name */
    public EditText f492s;

    /* renamed from: t  reason: collision with root package name */
    public final AccessibilityManager f493t;

    /* renamed from: u  reason: collision with root package name */
    public C0012k f494u;

    /* renamed from: v  reason: collision with root package name */
    public final r f495v;

    /* renamed from: w  reason: collision with root package name */
    public final s f496w;

    public v(TextInputLayout textInputLayout, R0 r02) {
        super(textInputLayout.getContext());
        CharSequence k4;
        this.f484k = 0;
        this.f485l = new LinkedHashSet();
        this.f495v = new r(this);
        s sVar = new s(this);
        this.f496w = sVar;
        this.f493t = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f477d = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f478e = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton b4 = b(R.id.text_input_error_icon, from, this);
        this.f479f = b4;
        CheckableImageButton b5 = b(R.id.text_input_end_icon, from, frameLayout);
        this.f482i = b5;
        this.f483j = new u(this, r02);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f490q = appCompatTextView;
        if (r02.l(33)) {
            this.f480g = A2.d.b(getContext(), r02, 33);
        }
        if (r02.l(34)) {
            this.f481h = C1485w.b(r02.h(34, -1), null);
        }
        if (r02.l(32)) {
            b4.setImageDrawable(r02.e(32));
            k();
            x.a(textInputLayout, b4, this.f480g, this.f481h);
        }
        b4.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.o(b4, 2);
        b4.setClickable(false);
        b4.f7985i = false;
        b4.setFocusable(false);
        if (!r02.l(48)) {
            if (r02.l(28)) {
                this.f486m = A2.d.b(getContext(), r02, 28);
            }
            if (r02.l(29)) {
                this.f487n = C1485w.b(r02.h(29, -1), null);
            }
        }
        if (r02.l(27)) {
            g(r02.h(27, 0));
            if (r02.l(25) && b5.getContentDescription() != (k4 = r02.k(25))) {
                b5.setContentDescription(k4);
            }
            boolean a4 = r02.a(24, true);
            if (b5.f7984h != a4) {
                b5.f7984h = a4;
                b5.sendAccessibilityEvent(0);
            }
        } else if (r02.l(48)) {
            if (r02.l(49)) {
                this.f486m = A2.d.b(getContext(), r02, 49);
            }
            if (r02.l(50)) {
                this.f487n = C1485w.b(r02.h(50, -1), null);
            }
            g(r02.a(48, false) ? 1 : 0);
            CharSequence k5 = r02.k(46);
            if (b5.getContentDescription() != k5) {
                b5.setContentDescription(k5);
            }
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        androidx.core.view.A.e(appCompatTextView, 1);
        appCompatTextView.setTextAppearance(r02.i(65, 0));
        if (r02.l(66)) {
            appCompatTextView.setTextColor(r02.b(66));
        }
        CharSequence k6 = r02.k(64);
        this.f489p = TextUtils.isEmpty(k6) ? null : k6;
        appCompatTextView.setText(k6);
        m();
        frameLayout.addView(b5);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(b4);
        textInputLayout.f8096e0.add(sVar);
        if (textInputLayout.f8099g != null) {
            sVar.a(textInputLayout);
        }
        addOnAttachStateChangeListener(new t(this));
    }

    public final void a() {
        if (this.f494u == null || this.f493t == null) {
            return;
        }
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        if (androidx.core.view.A.b(this)) {
            this.f493t.addTouchExplorationStateChangeListener(new M.b(this.f494u));
        }
    }

    public final CheckableImageButton b(int i4, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i4);
        if (A2.d.d(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    public final w c() {
        w c0008g;
        u uVar = this.f483j;
        int i4 = this.f484k;
        SparseArray sparseArray = uVar.f473a;
        w wVar = (w) sparseArray.get(i4);
        if (wVar == null) {
            v vVar = uVar.f474b;
            if (i4 == -1) {
                c0008g = new C0008g(vVar);
            } else if (i4 == 0) {
                c0008g = new E(vVar);
            } else if (i4 == 1) {
                wVar = new G(vVar, uVar.f476d);
                sparseArray.append(i4, wVar);
            } else if (i4 == 2) {
                c0008g = new C0007f(vVar);
            } else if (i4 != 3) {
                throw new IllegalArgumentException(C1080K.a("Invalid end icon mode: ", i4));
            } else {
                c0008g = new q(vVar);
            }
            wVar = c0008g;
            sparseArray.append(i4, wVar);
        }
        return wVar;
    }

    public final boolean d() {
        return this.f478e.getVisibility() == 0 && this.f482i.getVisibility() == 0;
    }

    public final boolean e() {
        return this.f479f.getVisibility() == 0;
    }

    public final void f(boolean z4) {
        boolean z5;
        boolean isActivated;
        boolean isChecked;
        w c4 = c();
        boolean z6 = true;
        if (!c4.k() || (isChecked = this.f482i.isChecked()) == c4.l()) {
            z5 = false;
        } else {
            this.f482i.setChecked(!isChecked);
            z5 = true;
        }
        if (!(c4 instanceof q) || (isActivated = this.f482i.isActivated()) == c4.j()) {
            z6 = z5;
        } else {
            this.f482i.setActivated(!isActivated);
        }
        if (z4 || z6) {
            x.b(this.f477d, this.f482i, this.f486m);
        }
    }

    public final void g(int i4) {
        AccessibilityManager accessibilityManager;
        if (this.f484k == i4) {
            return;
        }
        w c4 = c();
        C0012k c0012k = this.f494u;
        if (c0012k != null && (accessibilityManager = this.f493t) != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(new M.b(c0012k));
        }
        this.f494u = null;
        c4.s();
        this.f484k = i4;
        Iterator it = this.f485l.iterator();
        while (it.hasNext()) {
            ((N) it.next()).a();
        }
        h(i4 != 0);
        w c5 = c();
        int i5 = this.f483j.f475c;
        if (i5 == 0) {
            i5 = c5.d();
        }
        Drawable a4 = i5 != 0 ? C0832a.a(i5, getContext()) : null;
        this.f482i.setImageDrawable(a4);
        if (a4 != null) {
            x.a(this.f477d, this.f482i, this.f486m, this.f487n);
            x.b(this.f477d, this.f482i, this.f486m);
        }
        int c6 = c5.c();
        CharSequence text = c6 != 0 ? getResources().getText(c6) : null;
        if (this.f482i.getContentDescription() != text) {
            this.f482i.setContentDescription(text);
        }
        boolean k4 = c5.k();
        CheckableImageButton checkableImageButton = this.f482i;
        if (checkableImageButton.f7984h != k4) {
            checkableImageButton.f7984h = k4;
            checkableImageButton.sendAccessibilityEvent(0);
        }
        if (!c5.i(this.f477d.f8082P)) {
            throw new IllegalStateException("The current box background mode " + this.f477d.f8082P + " is not supported by the end icon mode " + i4);
        }
        c5.r();
        this.f494u = c5.h();
        a();
        View.OnClickListener f4 = c5.f();
        CheckableImageButton checkableImageButton2 = this.f482i;
        View.OnLongClickListener onLongClickListener = this.f488o;
        checkableImageButton2.setOnClickListener(f4);
        x.c(checkableImageButton2, onLongClickListener);
        EditText editText = this.f492s;
        if (editText != null) {
            c5.m(editText);
            i(c5);
        }
        x.a(this.f477d, this.f482i, this.f486m, this.f487n);
        f(true);
    }

    public final void h(boolean z4) {
        if (d() != z4) {
            this.f482i.setVisibility(z4 ? 0 : 8);
            j();
            l();
            this.f477d.r();
        }
    }

    public final void i(w wVar) {
        if (this.f492s == null) {
            return;
        }
        if (wVar.e() != null) {
            this.f492s.setOnFocusChangeListener(wVar.e());
        }
        if (wVar.g() != null) {
            this.f482i.setOnFocusChangeListener(wVar.g());
        }
    }

    public final void j() {
        this.f478e.setVisibility((this.f482i.getVisibility() != 0 || e()) ? 8 : 0);
        setVisibility(d() || e() || !((this.f489p == null || this.f491r) ? true : false) ? 0 : 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k() {
        /*
            r4 = this;
            com.google.android.material.internal.CheckableImageButton r0 = r4.f479f
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1a
            com.google.android.material.textfield.TextInputLayout r0 = r4.f477d
            F2.A r3 = r0.f8111m
            boolean r3 = r3.f399k
            if (r3 == 0) goto L1a
            boolean r0 = r0.o()
            if (r0 == 0) goto L1a
            r0 = r1
            goto L1b
        L1a:
            r0 = r2
        L1b:
            com.google.android.material.internal.CheckableImageButton r3 = r4.f479f
            if (r0 == 0) goto L21
            r0 = r2
            goto L23
        L21:
            r0 = 8
        L23:
            r3.setVisibility(r0)
            r4.j()
            r4.l()
            int r0 = r4.f484k
            if (r0 == 0) goto L31
            goto L32
        L31:
            r1 = r2
        L32:
            if (r1 != 0) goto L39
            com.google.android.material.textfield.TextInputLayout r4 = r4.f477d
            r4.r()
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: F2.v.k():void");
    }

    public final void l() {
        int i4;
        if (this.f477d.f8099g == null) {
            return;
        }
        if (d() || e()) {
            i4 = 0;
        } else {
            EditText editText = this.f477d.f8099g;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            i4 = C0187y.d(editText);
        }
        AppCompatTextView appCompatTextView = this.f490q;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = this.f477d.f8099g.getPaddingTop();
        int paddingBottom = this.f477d.f8099g.getPaddingBottom();
        WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
        C0187y.h(appCompatTextView, dimensionPixelSize, paddingTop, i4, paddingBottom);
    }

    public final void m() {
        int visibility = this.f490q.getVisibility();
        int i4 = (this.f489p == null || this.f491r) ? 8 : 0;
        if (visibility != i4) {
            c().p(i4 == 0);
        }
        j();
        this.f490q.setVisibility(i4);
        this.f477d.r();
    }
}
