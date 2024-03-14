package f0;

import android.app.DatePickerDialog;
import android.app.PendingIntent;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.view.C0186x;
import androidx.slice.SliceItem;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
import d0.C0797e;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class x extends F implements View.OnClickListener, AdapterView.OnItemSelectedListener {

    /* renamed from: A  reason: collision with root package name */
    public final LinearLayout f9253A;

    /* renamed from: B  reason: collision with root package name */
    public View f9254B;

    /* renamed from: C  reason: collision with root package name */
    public View f9255C;

    /* renamed from: D  reason: collision with root package name */
    public boolean f9256D;

    /* renamed from: E  reason: collision with root package name */
    public final ProgressBar f9257E;

    /* renamed from: F  reason: collision with root package name */
    public Set f9258F;

    /* renamed from: G  reason: collision with root package name */
    public boolean f9259G;

    /* renamed from: H  reason: collision with root package name */
    public Spinner f9260H;

    /* renamed from: I  reason: collision with root package name */
    public int f9261I;

    /* renamed from: J  reason: collision with root package name */
    public C0849p f9262J;

    /* renamed from: K  reason: collision with root package name */
    public androidx.slice.core.a f9263K;

    /* renamed from: L  reason: collision with root package name */
    public SliceItem f9264L;

    /* renamed from: M  reason: collision with root package name */
    public boolean f9265M;

    /* renamed from: N  reason: collision with root package name */
    public List f9266N;

    /* renamed from: O  reason: collision with root package name */
    public boolean f9267O;

    /* renamed from: P  reason: collision with root package name */
    public boolean f9268P;

    /* renamed from: Q  reason: collision with root package name */
    public boolean f9269Q;

    /* renamed from: R  reason: collision with root package name */
    public Handler f9270R;

    /* renamed from: S  reason: collision with root package name */
    public long f9271S;

    /* renamed from: T  reason: collision with root package name */
    public int f9272T;

    /* renamed from: U  reason: collision with root package name */
    public int f9273U;

    /* renamed from: V  reason: collision with root package name */
    public int f9274V;

    /* renamed from: W  reason: collision with root package name */
    public SliceItem f9275W;

    /* renamed from: a0  reason: collision with root package name */
    public SliceItem f9276a0;

    /* renamed from: b0  reason: collision with root package name */
    public ArrayList f9277b0;

    /* renamed from: c0  reason: collision with root package name */
    public ArrayList f9278c0;

    /* renamed from: d0  reason: collision with root package name */
    public int f9279d0;

    /* renamed from: e0  reason: collision with root package name */
    public int f9280e0;

    /* renamed from: f0  reason: collision with root package name */
    public int f9281f0;

    /* renamed from: g0  reason: collision with root package name */
    public final s f9282g0;

    /* renamed from: h0  reason: collision with root package name */
    public final t f9283h0;

    /* renamed from: i0  reason: collision with root package name */
    public final u f9284i0;

    /* renamed from: p  reason: collision with root package name */
    public final LinearLayout f9285p;

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f9286q;

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f9287r;

    /* renamed from: s  reason: collision with root package name */
    public final LinearLayout f9288s;

    /* renamed from: t  reason: collision with root package name */
    public final TextView f9289t;

    /* renamed from: u  reason: collision with root package name */
    public final TextView f9290u;

    /* renamed from: v  reason: collision with root package name */
    public final TextView f9291v;

    /* renamed from: w  reason: collision with root package name */
    public final View f9292w;

    /* renamed from: x  reason: collision with root package name */
    public final View f9293x;

    /* renamed from: y  reason: collision with root package name */
    public final ArrayMap f9294y;

    /* renamed from: z  reason: collision with root package name */
    public final ArrayMap f9295z;

    public x(Context context) {
        super(context);
        this.f9294y = new ArrayMap();
        this.f9295z = new ArrayMap();
        this.f9258F = new HashSet();
        this.f9282g0 = new s(this);
        this.f9283h0 = new t(this);
        this.f9284i0 = new u(this);
        this.f9280e0 = getContext().getResources().getDimensionPixelSize(R.dimen.abc_slice_icon_size);
        this.f9279d0 = getContext().getResources().getDimensionPixelSize(R.dimen.abc_slice_small_image_size);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.abc_slice_small_template, (ViewGroup) this, false);
        this.f9285p = linearLayout;
        addView(linearLayout);
        this.f9286q = (LinearLayout) findViewById(R.id.icon_frame);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(16908290);
        this.f9287r = linearLayout2;
        this.f9288s = (LinearLayout) findViewById(R.id.subcontent);
        this.f9289t = (TextView) findViewById(16908310);
        this.f9290u = (TextView) findViewById(16908304);
        this.f9291v = (TextView) findViewById(R.id.last_updated);
        this.f9292w = findViewById(R.id.bottom_divider);
        this.f9293x = findViewById(R.id.action_divider);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.action_sent_indicator);
        this.f9257E = progressBar;
        int b4 = P.b(R.attr.colorControlHighlight, getContext());
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        if (indeterminateDrawable != null && b4 != 0) {
            indeterminateDrawable.setColorFilter(b4, PorterDuff.Mode.MULTIPLY);
            progressBar.setProgressDrawable(indeterminateDrawable);
        }
        this.f9253A = (LinearLayout) findViewById(16908312);
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.o(this, 2);
        C0186x.o(linearLayout2, 2);
    }

    public static void z(int i4, View view, int i5) {
        boolean z4 = i4 < 0 && i5 < 0;
        if (view == null || z4) {
            return;
        }
        if (i4 < 0) {
            i4 = view.getPaddingStart();
        }
        int paddingTop = view.getPaddingTop();
        if (i5 < 0) {
            i5 = view.getPaddingEnd();
        }
        view.setPaddingRelative(i4, paddingTop, i5, view.getPaddingBottom());
    }

    public final void A() {
        this.f9257E.setVisibility(this.f9259G ? 0 : 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0139  */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.x.B():void");
    }

    @Override // f0.F
    public final void c() {
        this.f9262J = null;
        this.f9258F.clear();
        w();
    }

    @Override // f0.F
    public final void e(boolean z4) {
        this.f9267O = z4;
        if (this.f9262J != null) {
            v(true);
        }
    }

    @Override // f0.F
    public final void f(int i4, int i5, int i6, int i7) {
        super.f(i4, i5, i6, i7);
        setPadding(i4, i5, i6, i7);
    }

    @Override // f0.F
    public final void g(long j4) {
        this.f9076g = j4;
        C0849p c0849p = this.f9262J;
        if (c0849p != null) {
            SliceItem sliceItem = c0849p.f9205h;
            s(sliceItem != null && TextUtils.isEmpty(sliceItem.f()));
        }
    }

    @Override // f0.F
    public final void h(Set set) {
        if (set == null) {
            this.f9258F.clear();
            this.f9259G = false;
        } else {
            this.f9258F = set;
        }
        B();
        A();
    }

    @Override // f0.F
    public final void j(boolean z4) {
        this.f9075f = z4;
        if (this.f9262J != null) {
            v(true);
        }
    }

    @Override // f0.F
    public final void l(List list) {
        this.f9266N = list;
        if (this.f9262J != null) {
            B();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
        if (r2 != false) goto L21;
     */
    @Override // f0.F
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(f0.G r4, boolean r5, int r6, int r7, f0.M r8) {
        /*
            r3 = this;
            r3.f9073d = r8
            f0.p r7 = r3.f9262J
            r8 = 0
            if (r7 == 0) goto L47
            boolean r7 = r7.g()
            if (r7 == 0) goto L47
            f0.p r7 = r3.f9262J
            if (r7 == 0) goto L19
            b0.h r0 = new b0.h
            androidx.slice.SliceItem r7 = r7.f9085a
            r0.<init>(r7)
            goto L1a
        L19:
            r0 = 0
        L1a:
            b0.h r7 = new b0.h
            androidx.slice.SliceItem r1 = r4.f9085a
            androidx.slice.Slice r1 = r1.g()
            r7.<init>(r1)
            r1 = 1
            if (r0 == 0) goto L30
            boolean r2 = r0.equals(r7)
            if (r2 == 0) goto L30
            r2 = r1
            goto L31
        L30:
            r2 = r8
        L31:
            if (r0 == 0) goto L41
            android.net.Uri r0 = r0.f4166b
            if (r0 == 0) goto L41
            android.net.Uri r7 = r7.f4166b
            boolean r7 = r0.equals(r7)
            if (r7 == 0) goto L41
            r7 = r1
            goto L42
        L41:
            r7 = r8
        L42:
            if (r7 == 0) goto L47
            if (r2 == 0) goto L47
            goto L48
        L47:
            r1 = r8
        L48:
            r3.f9259G = r8
            r3.f9265M = r5
            f0.p r4 = (f0.C0849p) r4
            r3.f9262J = r4
            r3.f9261I = r6
            r3.v(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.x.n(f0.G, boolean, int, int, f0.M):void");
    }

    @Override // f0.F
    public final void o(J j4, C0850q c0850q) {
        this.f9082m = j4;
        this.f9083n = c0850q;
        if (j4 != null) {
            z(c0850q.f9218b, this.f9286q, c0850q.f9219c);
            LinearLayout linearLayout = this.f9287r;
            C0850q c0850q2 = this.f9083n;
            z(c0850q2.f9220d, linearLayout, c0850q2.f9221e);
            TextView textView = this.f9289t;
            C0850q c0850q3 = this.f9083n;
            z(c0850q3.f9222f, textView, c0850q3.f9223g);
            LinearLayout linearLayout2 = this.f9288s;
            C0850q c0850q4 = this.f9083n;
            z(c0850q4.f9224h, linearLayout2, c0850q4.f9225i);
            LinearLayout linearLayout3 = this.f9253A;
            C0850q c0850q5 = this.f9083n;
            z(c0850q5.f9226j, linearLayout3, c0850q5.f9227k);
            View view = this.f9292w;
            C0850q c0850q6 = this.f9083n;
            int i4 = c0850q6.f9228l;
            int i5 = c0850q6.f9229m;
            boolean z4 = i4 < 0 && i5 < 0;
            if (view != null && !z4) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                if (i4 >= 0) {
                    marginLayoutParams.setMarginStart(i4);
                }
                if (i5 >= 0) {
                    marginLayoutParams.setMarginEnd(i5);
                }
                view.setLayoutParams(marginLayoutParams);
            }
            View view2 = this.f9293x;
            int i6 = this.f9083n.f9230n;
            if (view2 != null && i6 >= 0) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                layoutParams.height = i6;
                view2.setLayoutParams(layoutParams);
            }
            C0850q c0850q7 = this.f9083n;
            Integer num = c0850q7.f9239w;
            if ((num != null ? num.intValue() : c0850q7.f9217a.f9104a) != -1) {
                C0850q c0850q8 = this.f9083n;
                Integer num2 = c0850q8.f9239w;
                p(num2 != null ? num2.intValue() : c0850q8.f9217a.f9104a);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View$OnClickListenerC0833A view$OnClickListenerC0833A;
        E e4;
        androidx.slice.core.a aVar;
        androidx.slice.core.a aVar2 = this.f9263K;
        if (aVar2 == null || aVar2.f4081a == null) {
            return;
        }
        if (aVar2.c() != null) {
            String c4 = this.f9263K.c();
            c4.getClass();
            char c5 = 65535;
            switch (c4.hashCode()) {
                case -868304044:
                    if (c4.equals("toggle")) {
                        c5 = 0;
                        break;
                    }
                    break;
                case 759128640:
                    if (c4.equals("time_picker")) {
                        c5 = 1;
                        break;
                    }
                    break;
                case 1250407999:
                    if (c4.equals("date_picker")) {
                        c5 = 2;
                        break;
                    }
                    break;
            }
            switch (c5) {
                case 0:
                    view$OnClickListenerC0833A = (View$OnClickListenerC0833A) this.f9294y.get(this.f9263K);
                    break;
                case 1:
                    u(false);
                    return;
                case 2:
                    u(true);
                    return;
                default:
                    view$OnClickListenerC0833A = (View$OnClickListenerC0833A) this.f9295z.get(this.f9263K);
                    break;
            }
        } else {
            view$OnClickListenerC0833A = (View$OnClickListenerC0833A) this.f9295z.get(this.f9263K);
        }
        if (view$OnClickListenerC0833A != null && !(view instanceof View$OnClickListenerC0833A)) {
            androidx.slice.core.a aVar3 = view$OnClickListenerC0833A.f9039d;
            if (aVar3 == null) {
                return;
            }
            if (!aVar3.b()) {
                view$OnClickListenerC0833A.a();
            } else if (view$OnClickListenerC0833A.f9043h == null || (aVar = view$OnClickListenerC0833A.f9039d) == null || !aVar.b()) {
            } else {
                ((Checkable) view$OnClickListenerC0833A.f9043h).toggle();
            }
        } else if (this.f9262J.f9212o) {
            performClick();
        } else {
            try {
                this.f9259G = this.f9263K.f4081a.a(getContext(), null);
                if (this.f9073d != null) {
                    ((SearchResultIconSlice) this.f9073d).k(this.f9263K.f4089i, new C0836c(b(), 3, 0, this.f9261I));
                }
                if (this.f9259G && (e4 = this.f9081l) != null) {
                    e4.c(this.f9263K.f4089i, this.f9261I);
                    this.f9258F.add(this.f9263K.f4089i);
                }
                A();
            } catch (PendingIntent.CanceledException e5) {
                Log.e("RowView", "PendingIntent for slice cannot be sent", e5);
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i4, long j4) {
        if (this.f9276a0 == null || adapterView != this.f9260H || i4 < 0 || i4 >= this.f9277b0.size()) {
            return;
        }
        if (this.f9073d != null) {
            C0836c c0836c = new C0836c(b(), 5, 6, this.f9261I);
            ((SearchResultIconSlice) this.f9073d).k(this.f9276a0, c0836c);
        }
        try {
            if (this.f9276a0.a(getContext(), new Intent().addFlags(268435456).putExtra("android.app.slice.extra.SELECTION", (String) this.f9277b0.get(i4)))) {
                this.f9259G = true;
                E e4 = this.f9081l;
                if (e4 != null) {
                    e4.c(this.f9263K.f4089i, this.f9261I);
                    this.f9258F.add(this.f9263K.f4089i);
                }
                A();
            }
        } catch (PendingIntent.CanceledException e5) {
            Log.e("RowView", "PendingIntent for slice cannot be sent", e5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int paddingLeft = getPaddingLeft();
        LinearLayout linearLayout = this.f9285p;
        linearLayout.layout(paddingLeft, this.f9078i, linearLayout.getMeasuredWidth() + paddingLeft, t() + this.f9078i);
        if (this.f9255C != null && this.f9264L == null) {
            int t4 = t() + ((this.f9082m.f9122s - this.f9281f0) / 2) + this.f9078i;
            View view = this.f9255C;
            view.layout(paddingLeft, t4, view.getMeasuredWidth() + paddingLeft, this.f9281f0 + t4);
        } else if (this.f9260H != null) {
            int t5 = t() + this.f9078i;
            Spinner spinner = this.f9260H;
            spinner.layout(paddingLeft, t5, spinner.getMeasuredWidth() + paddingLeft, this.f9260H.getMeasuredHeight() + t5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int i6;
        int t4 = t();
        if (t4 != 0) {
            this.f9285p.setVisibility(0);
            measureChild(this.f9285p, i4, View.MeasureSpec.makeMeasureSpec(t4 + this.f9078i + this.f9080k, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            i6 = this.f9285p.getMeasuredWidth();
        } else {
            this.f9285p.setVisibility(8);
            i6 = 0;
        }
        View view = this.f9255C;
        if (view == null || this.f9264L != null) {
            Spinner spinner = this.f9260H;
            if (spinner != null) {
                measureChild(spinner, i4, View.MeasureSpec.makeMeasureSpec(this.f9082m.f9123t + this.f9078i + this.f9080k, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
                i6 = Math.max(i6, this.f9260H.getMeasuredWidth());
            }
        } else {
            measureChild(view, i4, View.MeasureSpec.makeMeasureSpec(this.f9082m.f9122s + this.f9078i + this.f9080k, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            this.f9281f0 = this.f9255C.getMeasuredHeight();
            i6 = Math.max(i6, this.f9255C.getMeasuredWidth());
        }
        int max = Math.max(i6 + this.f9077h + this.f9079j, getSuggestedMinimumWidth());
        C0849p c0849p = this.f9262J;
        setMeasuredDimension(FrameLayout.resolveSizeAndState(max, i4, 0), (c0849p != null ? c0849p.a(this.f9082m, this.f9084o) : 0) + this.f9078i + this.f9080k);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }

    @Override // f0.F
    public final void p(int i4) {
        this.f9074e = i4;
        if (this.f9262J != null) {
            v(true);
        }
    }

    public final void q(androidx.slice.core.a aVar, int i4, ViewGroup viewGroup, boolean z4) {
        View$OnClickListenerC0833A view$OnClickListenerC0833A = new View$OnClickListenerC0833A(getContext(), this.f9083n);
        viewGroup.addView(view$OnClickListenerC0833A);
        if (viewGroup.getVisibility() == 8) {
            viewGroup.setVisibility(0);
        }
        boolean b4 = aVar.b();
        C0836c c0836c = new C0836c(b(), !b4, b4 != 0 ? 3 : 0, this.f9261I);
        if (z4) {
            c0836c.f9155g = 0;
            c0836c.f9153e = 0;
            c0836c.f9154f = 1;
        }
        view$OnClickListenerC0833A.b(aVar, c0836c, this.f9073d, i4, this.f9081l);
        if (this.f9258F.contains(aVar.f4089i)) {
            view$OnClickListenerC0833A.c();
        }
        if (b4 != 0) {
            this.f9294y.put(aVar, view$OnClickListenerC0833A);
        } else {
            this.f9295z.put(aVar, view$OnClickListenerC0833A);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(androidx.slice.SliceItem r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.x.r(androidx.slice.SliceItem, int, boolean):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(boolean r9) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.x.s(boolean):void");
    }

    public final int t() {
        int a4 = this.f9262J.a(this.f9082m, this.f9084o);
        if (this.f9255C != null && this.f9264L == null) {
            a4 -= this.f9082m.f9122s;
        }
        return this.f9260H != null ? a4 - this.f9082m.f9123t : a4;
    }

    public final void u(boolean z4) {
        if (this.f9263K == null) {
            return;
        }
        Log.d("ASDF", "ASDF" + z4 + ":" + this.f9263K.f4089i);
        SliceItem i4 = C0797e.i(this.f9263K.f4089i, "long", "millis");
        if (i4 == null) {
            return;
        }
        int i5 = this.f9261I;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(i4.e()));
        if (z4) {
            new DatePickerDialog(getContext(), R.style.DialogTheme, new v(this, this.f9263K.f4089i, i5), calendar.get(1), calendar.get(2), calendar.get(5)).show();
        } else {
            new TimePickerDialog(getContext(), R.style.DialogTheme, new w(this, this.f9263K.f4089i, i5), calendar.get(11), calendar.get(12), false).show();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void v(boolean z4) {
        J j4;
        ProgressBar progressBar;
        int i4;
        IconCompat iconCompat;
        Drawable h4;
        int i5;
        boolean z5;
        boolean z6 = z4 && this.f9268P;
        if (!z6) {
            w();
        }
        if (this.f9262J.b() != -1) {
            setLayoutDirection(this.f9262J.b());
        }
        if (this.f9262J.f()) {
            Button button = (Button) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_row_show_more, (ViewGroup) this, false);
            button.setOnClickListener(new r(this, button));
            int i6 = this.f9074e;
            if (i6 != -1) {
                button.setTextColor(i6);
            }
            this.f9254B = button;
            this.f9285p.addView(button);
            if (this.f9258F.contains(this.f9262J.f9085a)) {
                this.f9259G = true;
                button.setVisibility(8);
                A();
                return;
            }
            return;
        }
        SliceItem sliceItem = this.f9262J.f9088d;
        CharSequence charSequence = sliceItem != null ? (CharSequence) sliceItem.f4059d : null;
        if (charSequence != null) {
            this.f9287r.setContentDescription(charSequence);
        }
        C0849p c0849p = this.f9262J;
        boolean z7 = c0849p.f9212o;
        SliceItem sliceItem2 = (!z7 || c0849p.f9214q) ? c0849p.f9204g : null;
        this.f9264L = sliceItem2;
        boolean z8 = sliceItem2 != null && (!z7 || c0849p.f9214q);
        if (z8) {
            z8 = r(sliceItem2, this.f9074e, true);
        }
        this.f9286q.setVisibility(z8 ? 0 : 8);
        SliceItem sliceItem3 = this.f9262J.f9205h;
        if (sliceItem3 != null) {
            this.f9289t.setText(sliceItem3.f());
        }
        if (this.f9082m != null) {
            this.f9289t.setTextSize(0, this.f9265M ? j4.f9107d : j4.f9110g);
            TextView textView = this.f9289t;
            C0850q c0850q = this.f9083n;
            Integer num = c0850q.f9240x;
            textView.setTextColor(num != null ? num.intValue() : c0850q.f9217a.f9105b);
        }
        this.f9289t.setVisibility(sliceItem3 != null ? 0 : 8);
        s(sliceItem3 != null);
        this.f9292w.setVisibility(this.f9262J.f9215r ? 0 : 8);
        SliceItem sliceItem4 = this.f9262J.f9203f;
        if (sliceItem4 != null && sliceItem4 != this.f9264L) {
            androidx.slice.core.a aVar = new androidx.slice.core.a(sliceItem4);
            this.f9263K = aVar;
            if (aVar.c() != null) {
                String c4 = this.f9263K.c();
                c4.getClass();
                switch (c4.hashCode()) {
                    case -868304044:
                        if (c4.equals("toggle")) {
                            z5 = false;
                            break;
                        }
                        z5 = true;
                        break;
                    case 759128640:
                        if (c4.equals("time_picker")) {
                            z5 = true;
                            break;
                        }
                        z5 = true;
                        break;
                    case 1250407999:
                        if (c4.equals("date_picker")) {
                            z5 = true;
                            break;
                        }
                        z5 = true;
                        break;
                    default:
                        z5 = true;
                        break;
                }
                switch (z5) {
                    case false:
                        q(this.f9263K, this.f9074e, this.f9253A, false);
                        y(this.f9285p, true);
                        return;
                    case true:
                        y(this.f9285p, true);
                        return;
                    case true:
                        y(this.f9285p, true);
                        return;
                }
            }
        }
        SliceItem sliceItem5 = this.f9262J.f9210m;
        if (sliceItem5 != null) {
            if (this.f9263K != null) {
                y(this.f9285p, true);
            }
            this.f9275W = sliceItem5;
            SliceItem i7 = C0797e.i(sliceItem5, "int", "range_mode");
            if (i7 != null) {
                this.f9256D = i7.d() == 2;
            }
            if (!z6) {
                SliceItem i8 = C0797e.i(this.f9275W, "int", "min");
                int d4 = i8 != null ? i8.d() : 0;
                this.f9273U = d4;
                SliceItem i9 = C0797e.i(this.f9275W, "int", "max");
                int i10 = this.f9256D ? 5 : 100;
                if (i9 != null) {
                    i10 = i9.d();
                }
                this.f9274V = i10;
                SliceItem i11 = C0797e.i(this.f9275W, "int", "value");
                this.f9272T = i11 != null ? i11.d() - d4 : 0;
                if (this.f9270R == null) {
                    this.f9270R = new Handler();
                }
                if (this.f9256D) {
                    RatingBar ratingBar = new RatingBar(getContext());
                    ((LayerDrawable) ratingBar.getProgressDrawable()).getDrawable(2).setColorFilter(this.f9074e, PorterDuff.Mode.SRC_IN);
                    ratingBar.setStepSize(1.0f);
                    ratingBar.setNumStars(this.f9274V);
                    ratingBar.setRating(this.f9272T);
                    ratingBar.setVisibility(0);
                    LinearLayout linearLayout = new LinearLayout(getContext());
                    linearLayout.setGravity(17);
                    linearLayout.setVisibility(0);
                    linearLayout.addView(ratingBar, new FrameLayout.LayoutParams(-2, -2));
                    addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
                    ratingBar.setOnRatingBarChangeListener(this.f9284i0);
                    this.f9255C = linearLayout;
                } else {
                    SliceItem i12 = C0797e.i(this.f9275W, "int", "range_mode");
                    boolean z9 = i12 != null && i12.d() == 1;
                    boolean equals = "action".equals(this.f9275W.f4057b);
                    boolean z10 = this.f9264L == null;
                    if (!equals) {
                        if (z10) {
                            progressBar = new ProgressBar(getContext(), null, 16842872);
                        } else {
                            progressBar = (ProgressBar) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_progress_inline_view, (ViewGroup) this, false);
                            C0850q c0850q2 = this.f9083n;
                            if (c0850q2 != null) {
                                if (progressBar != null && (i4 = c0850q2.f9232p) >= 0) {
                                    ViewGroup.LayoutParams layoutParams = progressBar.getLayoutParams();
                                    layoutParams.width = i4;
                                    progressBar.setLayoutParams(layoutParams);
                                }
                                C0850q c0850q3 = this.f9083n;
                                z(c0850q3.f9233q, progressBar, c0850q3.f9234r);
                            }
                        }
                        if (z9) {
                            progressBar.setIndeterminate(true);
                        }
                    } else if (z10) {
                        progressBar = new SeekBar(getContext());
                    } else {
                        progressBar = (SeekBar) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_seekbar_view, (ViewGroup) this, false);
                        C0850q c0850q4 = this.f9083n;
                        if (c0850q4 != null && progressBar != null && (i5 = c0850q4.f9231o) >= 0) {
                            ViewGroup.LayoutParams layoutParams2 = progressBar.getLayoutParams();
                            layoutParams2.width = i5;
                            progressBar.setLayoutParams(layoutParams2);
                        }
                    }
                    Drawable indeterminateDrawable = z9 ? progressBar.getIndeterminateDrawable() : progressBar.getProgressDrawable();
                    int i13 = this.f9074e;
                    if (i13 != -1 && indeterminateDrawable != null) {
                        indeterminateDrawable.setTint(i13);
                        if (z9) {
                            progressBar.setIndeterminateDrawable(indeterminateDrawable);
                        } else {
                            progressBar.setProgressDrawable(indeterminateDrawable);
                        }
                    }
                    progressBar.setMax(this.f9274V - this.f9273U);
                    progressBar.setProgress(this.f9272T);
                    progressBar.setVisibility(0);
                    if (this.f9264L == null) {
                        addView(progressBar, new FrameLayout.LayoutParams(-1, -2));
                    } else {
                        this.f9288s.setVisibility(8);
                        this.f9287r.addView(progressBar, 1);
                    }
                    this.f9255C = progressBar;
                    if (equals) {
                        SliceItem e4 = this.f9262J.e();
                        SeekBar seekBar = (SeekBar) this.f9255C;
                        if (e4 != null && (iconCompat = (IconCompat) e4.f4059d) != null && (h4 = iconCompat.h(getContext())) != null) {
                            seekBar.setThumb(h4);
                        }
                        Drawable thumb = seekBar.getThumb();
                        int i14 = this.f9074e;
                        if (i14 != -1 && thumb != null) {
                            thumb.setTint(i14);
                            seekBar.setThumb(thumb);
                        }
                        seekBar.setOnSeekBarChangeListener(this.f9283h0);
                    }
                }
            }
            if (this.f9264L == null) {
                return;
            }
        }
        SliceItem sliceItem6 = this.f9262J.f9211n;
        if (sliceItem6 == null) {
            B();
            A();
            return;
        }
        this.f9276a0 = sliceItem6;
        if (this.f9270R == null) {
            this.f9270R = new Handler();
        }
        this.f9277b0 = new ArrayList();
        this.f9278c0 = new ArrayList();
        List b4 = sliceItem6.g().b();
        for (int i15 = 0; i15 < b4.size(); i15++) {
            SliceItem sliceItem7 = (SliceItem) b4.get(i15);
            if (sliceItem7.i("selection_option")) {
                SliceItem i16 = C0797e.i(sliceItem7, "text", "selection_option_key");
                SliceItem i17 = C0797e.i(sliceItem7, "text", "selection_option_value");
                if (i16 != null && i17 != null) {
                    this.f9277b0.add(((CharSequence) i16.f4059d).toString());
                    this.f9278c0.add(i17.f());
                }
            }
        }
        this.f9260H = (Spinner) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_row_selection, (ViewGroup) this, false);
        ArrayAdapter arrayAdapter = new ArrayAdapter(getContext(), (int) R.layout.abc_slice_row_selection_text, this.f9278c0);
        arrayAdapter.setDropDownViewResource(R.layout.abc_slice_row_selection_dropdown_text);
        this.f9260H.setAdapter((SpinnerAdapter) arrayAdapter);
        addView(this.f9260H);
        this.f9260H.setOnItemSelectedListener(this);
    }

    public final void w() {
        this.f9285p.setVisibility(0);
        setLayoutDirection(2);
        y(this.f9285p, false);
        y(this.f9287r, false);
        this.f9286q.removeAllViews();
        this.f9253A.removeAllViews();
        this.f9253A.setVisibility(8);
        this.f9289t.setText((CharSequence) null);
        this.f9290u.setText((CharSequence) null);
        this.f9291v.setText((CharSequence) null);
        this.f9291v.setVisibility(8);
        this.f9294y.clear();
        this.f9295z.clear();
        this.f9263K = null;
        this.f9292w.setVisibility(8);
        this.f9293x.setVisibility(8);
        View view = this.f9254B;
        if (view != null) {
            this.f9285p.removeView(view);
            this.f9254B = null;
        }
        this.f9268P = false;
        this.f9275W = null;
        this.f9273U = 0;
        this.f9274V = 0;
        this.f9272T = 0;
        this.f9271S = 0L;
        this.f9270R = null;
        View view2 = this.f9255C;
        if (view2 != null) {
            if (this.f9264L == null) {
                removeView(view2);
            } else {
                this.f9287r.removeView(view2);
            }
            this.f9255C = null;
        }
        this.f9288s.setVisibility(0);
        this.f9264L = null;
        this.f9257E.setVisibility(8);
        Spinner spinner = this.f9260H;
        if (spinner != null) {
            removeView(spinner);
            this.f9260H = null;
        }
        this.f9276a0 = null;
    }

    public final void x() {
        if (this.f9275W == null) {
            return;
        }
        try {
            this.f9271S = System.currentTimeMillis();
            this.f9275W.a(getContext(), new Intent().addFlags(268435456).putExtra("android.app.slice.extra.RANGE_VALUE", this.f9272T));
            if (this.f9073d != null) {
                C0836c c0836c = new C0836c(b(), 2, 4, this.f9261I);
                c0836c.f9156h = this.f9272T;
                ((SearchResultIconSlice) this.f9073d).k(this.f9275W, c0836c);
            }
        } catch (PendingIntent.CanceledException e4) {
            Log.e("RowView", "PendingIntent for slice cannot be sent", e4);
        }
    }

    public final void y(View view, boolean z4) {
        view.setOnClickListener(z4 ? this : null);
        view.setBackground(z4 ? P.c(16843534, getContext()) : null);
        view.setClickable(z4);
    }
}
