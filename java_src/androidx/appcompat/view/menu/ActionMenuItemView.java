package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.widget.AppCompatTextView;
import com.android.systemui.shared.system.QuickStepContract;
import d.C0792a;
import j.C1084b;
import j.InterfaceC1073D;
import j.InterfaceC1096n;
import j.r;
import k.C1143j;
import k.InterfaceC1153o;
/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements InterfaceC1073D, View.OnClickListener, InterfaceC1153o {

    /* renamed from: i  reason: collision with root package name */
    public r f2487i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f2488j;

    /* renamed from: k  reason: collision with root package name */
    public Drawable f2489k;

    /* renamed from: l  reason: collision with root package name */
    public InterfaceC1096n f2490l;

    /* renamed from: m  reason: collision with root package name */
    public C1084b f2491m;

    /* renamed from: n  reason: collision with root package name */
    public C1143j f2492n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f2493o;

    /* renamed from: p  reason: collision with root package name */
    public final int f2494p;

    /* renamed from: q  reason: collision with root package name */
    public int f2495q;

    /* renamed from: r  reason: collision with root package name */
    public final int f2496r;

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    @Override // k.InterfaceC1153o
    public final boolean a() {
        return r();
    }

    @Override // j.InterfaceC1073D
    public final void b(r rVar) {
        this.f2487i = rVar;
        Drawable icon = rVar.getIcon();
        this.f2489k = icon;
        if (icon != null) {
            int intrinsicWidth = icon.getIntrinsicWidth();
            int intrinsicHeight = icon.getIntrinsicHeight();
            int i4 = this.f2496r;
            if (intrinsicWidth > i4) {
                intrinsicHeight = (int) (intrinsicHeight * (i4 / intrinsicWidth));
                intrinsicWidth = i4;
            }
            if (intrinsicHeight > i4) {
                intrinsicWidth = (int) (intrinsicWidth * (i4 / intrinsicHeight));
            } else {
                i4 = intrinsicHeight;
            }
            icon.setBounds(0, 0, intrinsicWidth, i4);
        }
        setCompoundDrawables(icon, null, null, null);
        t();
        this.f2488j = rVar.getTitleCondensed();
        t();
        setId(rVar.f10596a);
        setVisibility(rVar.isVisible() ? 0 : 8);
        setEnabled(rVar.isEnabled());
        if (rVar.hasSubMenu() && this.f2491m == null) {
            this.f2491m = new C1084b(this);
        }
    }

    @Override // j.InterfaceC1073D
    public final r c() {
        return this.f2487i;
    }

    @Override // k.InterfaceC1153o
    public final boolean d() {
        return r() && this.f2487i.getIcon() == null;
    }

    @Override // android.widget.TextView, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1096n interfaceC1096n = this.f2490l;
        if (interfaceC1096n != null) {
            interfaceC1096n.d(this.f2487i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2493o = s();
        t();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i4, int i5) {
        int i6;
        boolean r4 = r();
        if (r4 && (i6 = this.f2495q) >= 0) {
            super.setPadding(i6, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i4, i5);
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f2494p) : this.f2494p;
        if (mode != 1073741824 && this.f2494p > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), i5);
        }
        if (r4 || this.f2489k == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f2489k.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C1084b c1084b;
        if (this.f2487i.hasSubMenu() && (c1084b = this.f2491m) != null && c1084b.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public final boolean r() {
        return !TextUtils.isEmpty(getText());
    }

    public final boolean s() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i4 = configuration.screenWidthDp;
        return i4 >= 480 || (i4 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i4, int i5, int i6, int i7) {
        this.f2495q = i4;
        super.setPadding(i4, i5, i6, i7);
    }

    public final void t() {
        boolean z4 = true;
        boolean z5 = !TextUtils.isEmpty(this.f2488j);
        if (this.f2489k != null) {
            if (!((this.f2487i.f10620y & 4) == 4) || !this.f2493o) {
                z4 = false;
            }
        }
        boolean z6 = z5 & z4;
        setText(z6 ? this.f2488j : null);
        CharSequence charSequence = this.f2487i.f10612q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z6 ? null : this.f2487i.f10600e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f2487i.f10613r;
        if (TextUtils.isEmpty(charSequence2)) {
            setTooltipText(z6 ? null : this.f2487i.f10600e);
        } else {
            setTooltipText(charSequence2);
        }
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Resources resources = context.getResources();
        this.f2493o = s();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0792a.f8733c, i4, 0);
        this.f2494p = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.f2496r = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f2495q = -1;
        setSaveEnabled(false);
    }
}
