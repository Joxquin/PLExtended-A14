package F2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.android.systemui.shared.R;
import com.google.android.material.textfield.TextInputLayout;
import i2.C0980a;
import java.util.Locale;
import k.C0;
import k.C1160s;
import x2.C1480r;
/* loaded from: classes.dex */
public final class D extends C1160s {

    /* renamed from: h  reason: collision with root package name */
    public final C0 f413h;

    /* renamed from: i  reason: collision with root package name */
    public final AccessibilityManager f414i;

    /* renamed from: j  reason: collision with root package name */
    public final Rect f415j;

    /* renamed from: k  reason: collision with root package name */
    public final float f416k;

    /* renamed from: l  reason: collision with root package name */
    public final int f417l;

    /* renamed from: m  reason: collision with root package name */
    public final ColorStateList f418m;

    public D() {
        throw null;
    }

    public D(Context context, AttributeSet attributeSet) {
        super(H2.a.a(context, attributeSet, R.attr.autoCompleteTextViewStyle, 0), attributeSet, R.attr.autoCompleteTextViewStyle);
        this.f415j = new Rect();
        Context context2 = getContext();
        TypedArray d4 = C1480r.d(context2, attributeSet, C0980a.f9636l, R.attr.autoCompleteTextViewStyle, R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (d4.hasValue(0) && d4.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        int resourceId = d4.getResourceId(2, R.layout.mtrl_auto_complete_simple_item);
        this.f416k = d4.getDimensionPixelOffset(1, R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        this.f417l = d4.getColor(3, 0);
        this.f418m = A2.d.a(context2, d4, 4);
        this.f414i = (AccessibilityManager) context2.getSystemService("accessibility");
        C0 c02 = new C0(context2, null, R.attr.listPopupWindowStyle, 0);
        this.f413h = c02;
        c02.f10728B = true;
        k.K k4 = c02.f10729C;
        k4.setFocusable(true);
        c02.f10744r = this;
        k4.setInputMethodMode(2);
        c02.o(getAdapter());
        c02.f10745s = new B(this);
        if (d4.hasValue(5)) {
            setAdapter(new C(this, getContext(), resourceId, getResources().getStringArray(d4.getResourceId(5, 0))));
        }
        d4.recycle();
    }

    public static void a(D d4, Object obj) {
        d4.setText(d4.convertSelectionToString(obj), false);
    }

    public final TextInputLayout b() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView
    public final CharSequence getHint() {
        TextInputLayout b4 = b();
        if (b4 == null || !b4.f8072F) {
            return super.getHint();
        }
        if (b4.f8070D) {
            return b4.f8071E;
        }
        return null;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout b4 = b();
        if (b4 != null && b4.f8072F && super.getHint() == null && Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu")) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        if (View.MeasureSpec.getMode(i4) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout b4 = b();
            int i6 = 0;
            if (adapter != null && b4 != null) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                C0 c02 = this.f413h;
                int min = Math.min(adapter.getCount(), Math.max(0, !c02.b() ? -1 : c02.f10732f.getSelectedItemPosition()) + 15);
                View view = null;
                int i7 = 0;
                for (int max = Math.max(0, min - 15); max < min; max++) {
                    int itemViewType = adapter.getItemViewType(max);
                    if (itemViewType != i6) {
                        view = null;
                        i6 = itemViewType;
                    }
                    view = adapter.getView(max, view, b4);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                    i7 = Math.max(i7, view.getMeasuredWidth());
                }
                Drawable d4 = this.f413h.d();
                if (d4 != null) {
                    d4.getPadding(this.f415j);
                    Rect rect = this.f415j;
                    i7 += rect.left + rect.right;
                }
                i6 = b4.f8097f.f482i.getMeasuredWidth() + i7;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i6), View.MeasureSpec.getSize(i4)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        this.f413h.o(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public final void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f413h.f10746t = getOnItemSelectedListener();
    }

    @Override // android.widget.TextView
    public final void setRawInputType(int i4) {
        super.setRawInputType(i4);
        TextInputLayout b4 = b();
        if (b4 != null) {
            b4.t();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        AccessibilityManager accessibilityManager = this.f414i;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f413h.show();
        }
    }
}
