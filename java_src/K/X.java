package k;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class X extends C0 implements InterfaceC1126a0 {

    /* renamed from: D  reason: collision with root package name */
    public CharSequence f10840D;

    /* renamed from: E  reason: collision with root package name */
    public ListAdapter f10841E;

    /* renamed from: F  reason: collision with root package name */
    public final Rect f10842F;

    /* renamed from: G  reason: collision with root package name */
    public int f10843G;

    /* renamed from: H  reason: collision with root package name */
    public final /* synthetic */ C1128b0 f10844H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X(C1128b0 c1128b0, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.f10844H = c1128b0;
        this.f10842F = new Rect();
        this.f10744r = c1128b0;
        this.f10728B = true;
        this.f10729C.setFocusable(true);
        this.f10745s = new V(this);
    }

    @Override // k.InterfaceC1126a0
    public final void f(CharSequence charSequence) {
        this.f10840D = charSequence;
    }

    @Override // k.InterfaceC1126a0
    public final void i(int i4) {
        this.f10843G = i4;
    }

    @Override // k.InterfaceC1126a0
    public final void l(int i4, int i5) {
        ViewTreeObserver viewTreeObserver;
        boolean b4 = b();
        r();
        K k4 = this.f10729C;
        k4.setInputMethodMode(2);
        show();
        C1161s0 c1161s0 = this.f10732f;
        c1161s0.setChoiceMode(1);
        c1161s0.setTextDirection(i4);
        c1161s0.setTextAlignment(i5);
        C1128b0 c1128b0 = this.f10844H;
        int selectedItemPosition = c1128b0.getSelectedItemPosition();
        C1161s0 c1161s02 = this.f10732f;
        if (b() && c1161s02 != null) {
            c1161s02.f10970k = false;
            c1161s02.setSelection(selectedItemPosition);
            if (c1161s02.getChoiceMode() != 0) {
                c1161s02.setItemChecked(selectedItemPosition, true);
            }
        }
        if (b4 || (viewTreeObserver = c1128b0.getViewTreeObserver()) == null) {
            return;
        }
        S s4 = new S(1, this);
        viewTreeObserver.addOnGlobalLayoutListener(s4);
        k4.setOnDismissListener(new W(this, s4));
    }

    @Override // k.InterfaceC1126a0
    public final CharSequence n() {
        return this.f10840D;
    }

    @Override // k.C0, k.InterfaceC1126a0
    public final void o(ListAdapter listAdapter) {
        super.o(listAdapter);
        this.f10841E = listAdapter;
    }

    public final void r() {
        int i4;
        Drawable d4 = d();
        C1128b0 c1128b0 = this.f10844H;
        if (d4 != null) {
            d4.getPadding(c1128b0.f10872k);
            i4 = c1.a(c1128b0) ? c1128b0.f10872k.right : -c1128b0.f10872k.left;
        } else {
            Rect rect = c1128b0.f10872k;
            rect.right = 0;
            rect.left = 0;
            i4 = 0;
        }
        int paddingLeft = c1128b0.getPaddingLeft();
        int paddingRight = c1128b0.getPaddingRight();
        int width = c1128b0.getWidth();
        int i5 = c1128b0.f10871j;
        if (i5 == -2) {
            int a4 = c1128b0.a((SpinnerAdapter) this.f10841E, d());
            int i6 = c1128b0.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = c1128b0.f10872k;
            int i7 = (i6 - rect2.left) - rect2.right;
            if (a4 > i7) {
                a4 = i7;
            }
            q(Math.max(a4, (width - paddingLeft) - paddingRight));
        } else if (i5 == -1) {
            q((width - paddingLeft) - paddingRight);
        } else {
            q(i5);
        }
        this.f10735i = c1.a(c1128b0) ? (((width - paddingRight) - this.f10734h) - this.f10843G) + i4 : paddingLeft + this.f10843G + i4;
    }
}
