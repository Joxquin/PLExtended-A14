package androidx.slice.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.slice.SliceItem;
import b0.C0308b;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
import d0.C0797e;
import f0.C0836c;
import f0.C0837d;
import f0.C0838e;
import f0.C0850q;
import f0.F;
import f0.G;
import f0.J;
import f0.M;
import f0.P;
import f0.View$OnClickListenerC0839f;
import f0.ViewTreeObserver$OnPreDrawListenerC0840g;
import java.util.ArrayList;
import java.util.Date;
/* loaded from: classes.dex */
public class GridRowView extends F implements View.OnClickListener, View.OnTouchListener {

    /* renamed from: A  reason: collision with root package name */
    public final int f4090A;

    /* renamed from: B  reason: collision with root package name */
    public final int f4091B;

    /* renamed from: C  reason: collision with root package name */
    public final LinearLayout f4092C;

    /* renamed from: D  reason: collision with root package name */
    public final ViewTreeObserver$OnPreDrawListenerC0840g f4093D;

    /* renamed from: p  reason: collision with root package name */
    public final int f4094p;

    /* renamed from: q  reason: collision with root package name */
    public final int f4095q;

    /* renamed from: r  reason: collision with root package name */
    public final int[] f4096r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f4097s;

    /* renamed from: t  reason: collision with root package name */
    public final View f4098t;

    /* renamed from: u  reason: collision with root package name */
    public int f4099u;

    /* renamed from: v  reason: collision with root package name */
    public int f4100v;

    /* renamed from: w  reason: collision with root package name */
    public int f4101w;

    /* renamed from: x  reason: collision with root package name */
    public C0838e f4102x;

    /* renamed from: y  reason: collision with root package name */
    public final int f4103y;

    /* renamed from: z  reason: collision with root package name */
    public final int f4104z;

    public GridRowView(Context context) {
        this(context, null);
    }

    @Override // f0.F
    public final void c() {
        if (this.f4097s) {
            this.f4097s = false;
            getViewTreeObserver().removeOnPreDrawListener(this.f4093D);
        }
        this.f4092C.removeAllViews();
        setLayoutDirection(2);
        w(false);
    }

    @Override // f0.F
    public final void f(int i4, int i5, int i6, int i7) {
        J j4;
        super.f(i4, i5, i6, i7);
        LinearLayout linearLayout = this.f4092C;
        C0838e c0838e = this.f4102x;
        linearLayout.setPadding(i4, ((c0838e == null || !c0838e.f9168f || this.f4099u != 0 || (j4 = this.f9082m) == null) ? 0 : j4.f9116m) + i5, i6, t() + i7);
    }

    @Override // f0.F
    public final void n(G g4, boolean z4, int i4, int i5, M m4) {
        J j4;
        c();
        this.f9073d = m4;
        this.f4099u = i4;
        this.f4100v = i5;
        this.f4102x = (C0838e) g4;
        if (!y()) {
            x();
        }
        LinearLayout linearLayout = this.f4092C;
        int i6 = this.f9077h;
        int i7 = this.f9078i;
        C0838e c0838e = this.f4102x;
        linearLayout.setPadding(i6, ((c0838e == null || !c0838e.f9168f || this.f4099u != 0 || (j4 = this.f9082m) == null) ? 0 : j4.f9116m) + i7, this.f9079j, t() + this.f9080k);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SliceItem d4;
        Pair pair = (Pair) view.getTag();
        SliceItem sliceItem = (SliceItem) pair.first;
        C0836c c0836c = (C0836c) pair.second;
        if (sliceItem == null || (d4 = C0797e.d(sliceItem, "action", null)) == null) {
            return;
        }
        try {
            d4.a(null, null);
            M m4 = this.f9073d;
            if (m4 != null) {
                ((SearchResultIconSlice) m4).k(d4, c0836c);
            }
        } catch (PendingIntent.CanceledException e4) {
            Log.e("GridRowView", "PendingIntent for slice cannot be sent", e4);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int a4 = this.f4102x.a(this.f9082m, this.f9084o) + this.f9078i + this.f9080k;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(a4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        this.f4092C.getLayoutParams().height = a4;
        super.onMeasure(i4, makeMeasureSpec);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.f4098t.getLocationOnScreen(this.f4096r);
        this.f4098t.getBackground().setHotspot((int) (motionEvent.getRawX() - this.f4096r[0]), (int) (motionEvent.getRawY() - this.f4096r[1]));
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f4098t.setPressed(true);
        } else if (actionMasked == 3 || actionMasked == 1 || actionMasked == 2) {
            this.f4098t.setPressed(false);
        }
        return false;
    }

    @Override // f0.F
    public final void p(int i4) {
        this.f9074e = i4;
        if (this.f4102x != null) {
            c();
            x();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02e8 A[EDGE_INSN: B:179:0x02e8->B:147:0x02e8 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(f0.C0837d r29, int r30, int r31) {
        /*
            Method dump skipped, instructions count: 943
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.GridRowView.q(f0.d, int, int):void");
    }

    public final boolean r(SliceItem sliceItem, ViewGroup viewGroup, int i4, boolean z4) {
        SliceItem i5 = C0797e.i(sliceItem, "long", "millis");
        if (i5 == null) {
            return false;
        }
        long e4 = i5.e();
        TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_title, (ViewGroup) null);
        J j4 = this.f9082m;
        if (j4 != null) {
            textView.setTextSize(0, j4.f9113j);
            textView.setTextColor(this.f9082m.f9105b);
        }
        Date date = new Date(e4);
        SliceItem d4 = C0797e.d(sliceItem, "text", "title");
        if (d4 != null) {
            textView.setText((CharSequence) d4.f4059d);
        }
        viewGroup.setOnClickListener(new View$OnClickListenerC0839f(this, date, z4, sliceItem, this.f4099u));
        viewGroup.setClickable(true);
        viewGroup.setBackground(P.c(16843868, getContext()));
        viewGroup.addView(textView);
        textView.setPadding(0, i4, 0, 0);
        return true;
    }

    public final int s(SliceItem sliceItem) {
        J j4;
        if (sliceItem == null) {
            return 0;
        }
        if ("image".equals(sliceItem.f4057b)) {
            return this.f4095q;
        }
        if (("text".equals(sliceItem.f4057b) || "long".equals(sliceItem.f4057b)) && (j4 = this.f9082m) != null) {
            return j4.f9115l;
        }
        return 0;
    }

    public final int t() {
        J j4;
        C0838e c0838e = this.f4102x;
        if (c0838e == null || !c0838e.f9168f) {
            return 0;
        }
        if ((this.f4099u == this.f4100v - 1 || b() == 1) && (j4 = this.f9082m) != null) {
            return j4.f9117n;
        }
        return 0;
    }

    public final int u() {
        C0838e c0838e = this.f4102x;
        if (c0838e == null || !c0838e.e() || getWidth() == 0) {
            return -1;
        }
        if (this.f4102x.f9170h.size() > 1) {
            C0838e c0838e2 = this.f4102x;
            int i4 = c0838e2.f9173k;
            return getWidth() / ((i4 != 2 ? i4 != 4 ? this.f4090A : c0838e2.d(getContext()).x : this.f4103y) + this.f4094p);
        }
        return 1;
    }

    public final void v(View view) {
        view.setOnClickListener(this);
        view.setBackground(P.c(16843868, getContext()));
        view.setClickable(true);
    }

    public final void w(boolean z4) {
        this.f4092C.setOnTouchListener(z4 ? this : null);
        this.f4092C.setOnClickListener(z4 ? this : null);
        this.f4098t.setBackground(z4 ? P.c(16843534, getContext()) : null);
        this.f4092C.setClickable(z4);
        setClickable(z4);
    }

    public final void x() {
        ViewGroup viewGroup;
        TextView textView;
        J j4;
        C0838e c0838e = this.f4102x;
        if (c0838e == null || !c0838e.e()) {
            c();
        } else if (!y()) {
            if (this.f4102x.b() != -1) {
                setLayoutDirection(this.f4102x.b());
            }
            if (this.f4102x.f9169g != null) {
                this.f4092C.setTag(new Pair(this.f4102x.f9169g, new C0836c(b(), 3, 1, this.f4099u)));
                w(true);
            }
            SliceItem sliceItem = this.f4102x.f9088d;
            CharSequence charSequence = sliceItem != null ? (CharSequence) sliceItem.f4059d : null;
            if (charSequence != null) {
                this.f4092C.setContentDescription(charSequence);
            }
            C0838e c0838e2 = this.f4102x;
            ArrayList arrayList = c0838e2.f9170h;
            int i4 = c0838e2.f9173k;
            if (i4 == 2 || i4 == 4) {
                this.f4092C.setGravity(48);
            } else {
                this.f4092C.setGravity(16);
            }
            int i5 = this.f4101w;
            boolean z4 = this.f4102x.f9171i != null;
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                if (this.f4092C.getChildCount() >= i5) {
                    int size = arrayList.size() - i5;
                    if (z4) {
                        LinearLayout linearLayout = this.f4092C;
                        View childAt = linearLayout.getChildAt(linearLayout.getChildCount() - 1);
                        this.f4092C.removeView(childAt);
                        SliceItem sliceItem2 = this.f4102x.f9171i;
                        int childCount = this.f4092C.getChildCount();
                        int i7 = this.f4101w;
                        if (("slice".equals(sliceItem2.f4057b) || "action".equals(sliceItem2.f4057b)) && sliceItem2.g().b().size() > 0) {
                            q(new C0837d(sliceItem2), childCount, i7);
                            return;
                        }
                        LayoutInflater from = LayoutInflater.from(getContext());
                        if (this.f4102x.f9168f) {
                            viewGroup = (FrameLayout) from.inflate(R.layout.abc_slice_grid_see_more_overlay, (ViewGroup) this.f4092C, false);
                            viewGroup.addView(childAt, 0, new FrameLayout.LayoutParams(-1, -1));
                            textView = (TextView) viewGroup.findViewById(R.id.text_see_more_count);
                            viewGroup.findViewById(R.id.overlay_see_more).setBackground(new C0308b(P.c(16842800, getContext()), this.f9082m.f9103L));
                        } else {
                            viewGroup = (LinearLayout) from.inflate(R.layout.abc_slice_grid_see_more, (ViewGroup) this.f4092C, false);
                            textView = (TextView) viewGroup.findViewById(R.id.text_see_more_count);
                            TextView textView2 = (TextView) viewGroup.findViewById(R.id.text_see_more);
                            if (this.f9082m != null && this.f9083n != null) {
                                textView2.setTextSize(0, j4.f9113j);
                                C0850q c0850q = this.f9083n;
                                Integer num = c0850q.f9240x;
                                textView2.setTextColor(num != null ? num.intValue() : c0850q.f9217a.f9105b);
                            }
                        }
                        this.f4092C.addView(viewGroup, new LinearLayout.LayoutParams(0, -1, 1.0f));
                        textView.setText(getResources().getString(R.string.abc_slice_more_content, Integer.valueOf(size)));
                        C0836c c0836c = new C0836c(b(), 4, 1, this.f4099u);
                        c0836c.f9155g = 2;
                        c0836c.f9153e = childCount;
                        c0836c.f9154f = i7;
                        viewGroup.setTag(new Pair(sliceItem2, c0836c));
                        v(viewGroup);
                        return;
                    }
                    return;
                }
                q((C0837d) arrayList.get(i6), i6, Math.min(arrayList.size(), i5));
            }
        }
    }

    public final boolean y() {
        C0838e c0838e = this.f4102x;
        if (c0838e == null || !c0838e.e()) {
            return true;
        }
        if (getWidth() != 0) {
            this.f4101w = u();
            return false;
        }
        this.f4097s = true;
        getViewTreeObserver().addOnPreDrawListener(this.f4093D);
        return true;
    }

    public GridRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4096r = new int[2];
        this.f4101w = -1;
        this.f4093D = new ViewTreeObserver$OnPreDrawListenerC0840g(this);
        Resources resources = getContext().getResources();
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f4092C = linearLayout;
        linearLayout.setOrientation(0);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        linearLayout.setGravity(16);
        this.f4091B = resources.getDimensionPixelSize(R.dimen.abc_slice_icon_size);
        this.f4104z = resources.getDimensionPixelSize(R.dimen.abc_slice_small_image_size);
        this.f4103y = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_image_only_height);
        this.f4090A = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_image_min_width);
        this.f4094p = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_gutter);
        this.f4095q = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_text_padding);
        View view = new View(getContext());
        this.f4098t = view;
        addView(view, new FrameLayout.LayoutParams(-1, -1));
    }
}
