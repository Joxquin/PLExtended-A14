package p2;

import A2.d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import com.android.systemui.shared.R;
import i2.C0980a;
import java.util.LinkedHashSet;
import k.C1166v;
import s2.C1394a;
import x2.C1480r;
import x2.C1485w;
/* renamed from: p2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1349a extends C1166v {

    /* renamed from: m  reason: collision with root package name */
    public static final int[] f11928m = {R.attr.state_error};

    /* renamed from: n  reason: collision with root package name */
    public static final int[][] f11929n = {new int[]{16842910, R.attr.state_error}, new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: h  reason: collision with root package name */
    public ColorStateList f11930h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f11931i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f11932j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f11933k;

    /* renamed from: l  reason: collision with root package name */
    public final CharSequence f11934l;

    public C1349a(Context context, AttributeSet attributeSet) {
        super(H2.a.a(context, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, R.attr.checkboxStyle);
        new LinkedHashSet();
        Context context2 = getContext();
        TypedArray d4 = C1480r.d(context2, attributeSet, C0980a.f9641q, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        if (d4.hasValue(0)) {
            setButtonTintList(d.a(context2, d4, 0));
        }
        this.f11931i = d4.getBoolean(4, false);
        this.f11932j = d4.getBoolean(1, true);
        this.f11933k = d4.getBoolean(3, false);
        this.f11934l = d4.getText(2);
        d4.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11931i && getButtonTintList() == null) {
            this.f11931i = true;
            if (this.f11930h == null) {
                int b4 = C1394a.b(this, R.attr.colorControlActivated);
                int b5 = C1394a.b(this, R.attr.colorError);
                int b6 = C1394a.b(this, R.attr.colorSurface);
                int b7 = C1394a.b(this, R.attr.colorOnSurface);
                this.f11930h = new ColorStateList(f11929n, new int[]{C1394a.d(b6, b5, 1.0f), C1394a.d(b6, b4, 1.0f), C1394a.d(b6, b7, 0.54f), C1394a.d(b6, b7, 0.38f), C1394a.d(b6, b7, 0.38f)});
            }
            setButtonTintList(this.f11930h);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 1);
        if (this.f11933k) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f11928m);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f11932j || !TextUtils.isEmpty(getText()) || (buttonDrawable = getButtonDrawable()) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (C1485w.a(this) ? -1 : 1);
        int save = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            getBackground().setHotspotBounds(bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f11933k) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f11934l));
        }
    }
}
