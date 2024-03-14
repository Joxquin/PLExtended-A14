package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import java.util.HashMap;
import java.util.WeakHashMap;
import o2.InterfaceC1334h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TimePickerView extends ConstraintLayout {

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ int f8198m = 0;

    /* renamed from: d  reason: collision with root package name */
    public final Chip f8199d;

    /* renamed from: e  reason: collision with root package name */
    public final Chip f8200e;

    /* renamed from: f  reason: collision with root package name */
    public final ClockHandView f8201f;

    /* renamed from: g  reason: collision with root package name */
    public final ClockFaceView f8202g;

    /* renamed from: h  reason: collision with root package name */
    public final MaterialButtonToggleGroup f8203h;

    /* renamed from: i  reason: collision with root package name */
    public final y f8204i;

    /* renamed from: j  reason: collision with root package name */
    public C f8205j;

    /* renamed from: k  reason: collision with root package name */
    public D f8206k;

    /* renamed from: l  reason: collision with root package name */
    public B f8207l;

    public TimePickerView(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        r();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i4) {
        super.onVisibilityChanged(view, i4);
        if (view == this && i4 == 0) {
            r();
        }
    }

    public final void r() {
        androidx.constraintlayout.widget.l lVar;
        if (this.f8203h.getVisibility() == 0) {
            androidx.constraintlayout.widget.q qVar = new androidx.constraintlayout.widget.q();
            qVar.c(this);
            WeakHashMap weakHashMap = J.f3079a;
            char c4 = C0187y.c(this) == 0 ? (char) 2 : (char) 1;
            HashMap hashMap = qVar.f3004c;
            if (hashMap.containsKey(Integer.valueOf((int) R.id.material_clock_display)) && (lVar = (androidx.constraintlayout.widget.l) hashMap.get(Integer.valueOf((int) R.id.material_clock_display))) != null) {
                androidx.constraintlayout.widget.m mVar = lVar.f2900d;
                switch (c4) {
                    case 1:
                        mVar.f2946i = -1;
                        mVar.f2944h = -1;
                        mVar.f2909F = -1;
                        mVar.f2916M = Integer.MIN_VALUE;
                        break;
                    case 2:
                        mVar.f2950k = -1;
                        mVar.f2948j = -1;
                        mVar.f2910G = -1;
                        mVar.f2918O = Integer.MIN_VALUE;
                        break;
                    case 3:
                        mVar.f2954m = -1;
                        mVar.f2952l = -1;
                        mVar.f2911H = 0;
                        mVar.f2917N = Integer.MIN_VALUE;
                        break;
                    case 4:
                        mVar.f2956n = -1;
                        mVar.f2958o = -1;
                        mVar.f2912I = 0;
                        mVar.f2919P = Integer.MIN_VALUE;
                        break;
                    case 5:
                        mVar.f2960p = -1;
                        mVar.f2961q = -1;
                        mVar.f2962r = -1;
                        mVar.f2915L = 0;
                        mVar.f2922S = Integer.MIN_VALUE;
                        break;
                    case 6:
                        mVar.f2963s = -1;
                        mVar.f2964t = -1;
                        mVar.f2914K = 0;
                        mVar.f2921R = Integer.MIN_VALUE;
                        break;
                    case 7:
                        mVar.f2965u = -1;
                        mVar.f2966v = -1;
                        mVar.f2913J = 0;
                        mVar.f2920Q = Integer.MIN_VALUE;
                        break;
                    case '\b':
                        mVar.f2905B = -1.0f;
                        mVar.f2904A = -1;
                        mVar.f2970z = -1;
                        break;
                    default:
                        throw new IllegalArgumentException("unknown constraint");
                }
            }
            qVar.a(this);
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        y yVar = new y(this);
        this.f8204i = yVar;
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        this.f8202g = (ClockFaceView) findViewById(R.id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.f8203h = materialButtonToggleGroup;
        materialButtonToggleGroup.f7822f.add(new InterfaceC1334h() { // from class: com.google.android.material.timepicker.x
            @Override // o2.InterfaceC1334h
            public final void a(int i5, boolean z4) {
                TimePickerView timePickerView = TimePickerView.this;
                if (!z4) {
                    int i6 = TimePickerView.f8198m;
                    timePickerView.getClass();
                    return;
                }
                C c4 = timePickerView.f8205j;
                if (c4 != null) {
                    int i7 = i5 == R.id.material_clock_period_pm_button ? 1 : 0;
                    n nVar = ((p) c4).f8233e;
                    if (i7 != nVar.f8226j) {
                        nVar.f8226j = i7;
                        int i8 = nVar.f8223g;
                        if (i8 < 12 && i7 == 1) {
                            nVar.f8223g = i8 + 12;
                        } else if (i8 < 12 || i7 != 0) {
                        } else {
                            nVar.f8223g = i8 - 12;
                        }
                    }
                }
            }
        });
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        this.f8199d = chip;
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        this.f8200e = chip2;
        this.f8201f = (ClockHandView) findViewById(R.id.material_clock_hand);
        A a4 = new A(new GestureDetector(getContext(), new z(this)));
        chip.setOnTouchListener(a4);
        chip2.setOnTouchListener(a4);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(yVar);
        chip2.setOnClickListener(yVar);
        chip.f7844s = "android.view.View";
        chip2.f7844s = "android.view.View";
    }
}
