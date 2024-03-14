package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import d.C0792a;
import j.InterfaceC1073D;
import j.r;
import java.util.WeakHashMap;
import k.R0;
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements InterfaceC1073D, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: d  reason: collision with root package name */
    public r f2499d;

    /* renamed from: e  reason: collision with root package name */
    public ImageView f2500e;

    /* renamed from: f  reason: collision with root package name */
    public RadioButton f2501f;

    /* renamed from: g  reason: collision with root package name */
    public TextView f2502g;

    /* renamed from: h  reason: collision with root package name */
    public CheckBox f2503h;

    /* renamed from: i  reason: collision with root package name */
    public TextView f2504i;

    /* renamed from: j  reason: collision with root package name */
    public ImageView f2505j;

    /* renamed from: k  reason: collision with root package name */
    public ImageView f2506k;

    /* renamed from: l  reason: collision with root package name */
    public LinearLayout f2507l;

    /* renamed from: m  reason: collision with root package name */
    public final Drawable f2508m;

    /* renamed from: n  reason: collision with root package name */
    public final int f2509n;

    /* renamed from: o  reason: collision with root package name */
    public final Context f2510o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f2511p;

    /* renamed from: q  reason: collision with root package name */
    public final Drawable f2512q;

    /* renamed from: r  reason: collision with root package name */
    public final boolean f2513r;

    /* renamed from: s  reason: collision with root package name */
    public LayoutInflater f2514s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f2515t;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    public final LayoutInflater a() {
        if (this.f2514s == null) {
            this.f2514s = LayoutInflater.from(getContext());
        }
        return this.f2514s;
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f2506k;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f2506k.getLayoutParams();
        rect.top = this.f2506k.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x010b  */
    @Override // j.InterfaceC1073D
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(j.r r13) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.b(j.r):void");
    }

    @Override // j.InterfaceC1073D
    public final r c() {
        return this.f2499d;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        Drawable drawable = this.f2508m;
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.m(this, drawable);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f2502g = textView;
        int i4 = this.f2509n;
        if (i4 != -1) {
            textView.setTextAppearance(this.f2510o, i4);
        }
        this.f2504i = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f2505j = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f2512q);
        }
        this.f2506k = (ImageView) findViewById(R.id.group_divider);
        this.f2507l = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        if (this.f2500e != null && this.f2511p) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f2500e.getLayoutParams();
            int i6 = layoutParams.height;
            if (i6 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i6;
            }
        }
        super.onMeasure(i4, i5);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet);
        R0 m4 = R0.m(getContext(), attributeSet, C0792a.f8748r, i4);
        this.f2508m = m4.e(5);
        this.f2509n = m4.i(1, -1);
        this.f2511p = m4.a(7, false);
        this.f2510o = context;
        this.f2512q = m4.e(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, R.attr.dropDownListViewStyle, 0);
        this.f2513r = obtainStyledAttributes.hasValue(0);
        m4.n();
        obtainStyledAttributes.recycle();
    }
}
