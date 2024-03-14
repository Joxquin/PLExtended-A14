package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.J;
import androidx.fragment.app.DialogFragment;
import com.android.systemui.shared.R;
import com.google.android.material.button.MaterialButton;
import f.C0832a;
import i2.C0980a;
import j.C1080K;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class MaterialTimePicker extends DialogFragment implements B {

    /* renamed from: h  reason: collision with root package name */
    public TimePickerView f8180h;

    /* renamed from: i  reason: collision with root package name */
    public ViewStub f8181i;

    /* renamed from: j  reason: collision with root package name */
    public p f8182j;

    /* renamed from: k  reason: collision with root package name */
    public w f8183k;

    /* renamed from: l  reason: collision with root package name */
    public q f8184l;

    /* renamed from: m  reason: collision with root package name */
    public int f8185m;

    /* renamed from: n  reason: collision with root package name */
    public int f8186n;

    /* renamed from: p  reason: collision with root package name */
    public CharSequence f8188p;

    /* renamed from: r  reason: collision with root package name */
    public CharSequence f8190r;

    /* renamed from: t  reason: collision with root package name */
    public CharSequence f8192t;

    /* renamed from: u  reason: collision with root package name */
    public MaterialButton f8193u;

    /* renamed from: v  reason: collision with root package name */
    public Button f8194v;

    /* renamed from: x  reason: collision with root package name */
    public n f8196x;

    /* renamed from: d  reason: collision with root package name */
    public final Set f8176d = new LinkedHashSet();

    /* renamed from: e  reason: collision with root package name */
    public final Set f8177e = new LinkedHashSet();

    /* renamed from: f  reason: collision with root package name */
    public final Set f8178f = new LinkedHashSet();

    /* renamed from: g  reason: collision with root package name */
    public final Set f8179g = new LinkedHashSet();

    /* renamed from: o  reason: collision with root package name */
    public int f8187o = 0;

    /* renamed from: q  reason: collision with root package name */
    public int f8189q = 0;

    /* renamed from: s  reason: collision with root package name */
    public int f8191s = 0;

    /* renamed from: w  reason: collision with root package name */
    public int f8195w = 0;

    /* renamed from: y  reason: collision with root package name */
    public int f8197y = 0;

    public final void b(MaterialButton materialButton) {
        p pVar;
        Pair pair;
        if (materialButton == null || this.f8180h == null || this.f8181i == null) {
            return;
        }
        q qVar = this.f8184l;
        if (qVar != null) {
            qVar.hide();
        }
        int i4 = this.f8195w;
        TimePickerView timePickerView = this.f8180h;
        ViewStub viewStub = this.f8181i;
        if (i4 == 0) {
            p pVar2 = this.f8182j;
            p pVar3 = pVar2;
            if (pVar2 == null) {
                pVar3 = new p(timePickerView, this.f8196x);
            }
            this.f8182j = pVar3;
            pVar = pVar3;
        } else {
            if (this.f8183k == null) {
                this.f8183k = new w((LinearLayout) viewStub.inflate(), this.f8196x);
            }
            w wVar = this.f8183k;
            wVar.f8251h.setChecked(false);
            wVar.f8252i.setChecked(false);
            pVar = this.f8183k;
        }
        this.f8184l = pVar;
        pVar.show();
        this.f8184l.a();
        int i5 = this.f8195w;
        if (i5 == 0) {
            pair = new Pair(Integer.valueOf(this.f8185m), Integer.valueOf((int) R.string.material_timepicker_text_input_mode_description));
        } else if (i5 != 1) {
            throw new IllegalArgumentException(C1080K.a("no icon for mode: ", i5));
        } else {
            pair = new Pair(Integer.valueOf(this.f8186n), Integer.valueOf((int) R.string.material_timepicker_clock_mode_description));
        }
        int intValue = ((Integer) pair.first).intValue();
        Drawable a4 = intValue != 0 ? C0832a.a(intValue, materialButton.getContext()) : null;
        if (materialButton.f7811l != a4) {
            materialButton.f7811l = a4;
            materialButton.h(true);
            materialButton.i(materialButton.getMeasuredWidth(), materialButton.getMeasuredHeight());
        }
        materialButton.setContentDescription(getResources().getString(((Integer) pair.second).intValue()));
        materialButton.sendAccessibilityEvent(4);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        for (DialogInterface.OnCancelListener onCancelListener : this.f8178f) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        if (bundle == null) {
            return;
        }
        n nVar = (n) bundle.getParcelable("TIME_PICKER_TIME_MODEL");
        this.f8196x = nVar;
        if (nVar == null) {
            this.f8196x = new n();
        }
        this.f8195w = bundle.getInt("TIME_PICKER_INPUT_MODE", 0);
        this.f8187o = bundle.getInt("TIME_PICKER_TITLE_RES", 0);
        this.f8188p = bundle.getCharSequence("TIME_PICKER_TITLE_TEXT");
        this.f8189q = bundle.getInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", 0);
        this.f8190r = bundle.getCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT");
        this.f8191s = bundle.getInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", 0);
        this.f8192t = bundle.getCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT");
        this.f8197y = bundle.getInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", 0);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog() {
        Context requireContext = requireContext();
        int i4 = this.f8197y;
        if (i4 == 0) {
            TypedValue a4 = A2.c.a(R.attr.materialTimePickerTheme, requireContext());
            i4 = a4 == null ? 0 : a4.data;
        }
        Dialog dialog = new Dialog(requireContext, i4);
        Context context = dialog.getContext();
        int i5 = A2.c.b(R.attr.colorSurface, context, MaterialTimePicker.class.getCanonicalName()).data;
        C2.i iVar = new C2.i(context, null, R.attr.materialTimePickerStyle, R.style.Widget_MaterialComponents_TimePicker);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0980a.f9646v, R.attr.materialTimePickerStyle, R.style.Widget_MaterialComponents_TimePicker);
        this.f8186n = obtainStyledAttributes.getResourceId(0, 0);
        this.f8185m = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        iVar.j(context);
        iVar.l(ColorStateList.valueOf(i5));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(iVar);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        View decorView = window.getDecorView();
        WeakHashMap weakHashMap = J.f3079a;
        iVar.k(androidx.core.view.D.d(decorView));
        return dialog;
    }

    @Override // androidx.fragment.app.K
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.f8180h = timePickerView;
        timePickerView.f8207l = this;
        this.f8181i = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.f8193u = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        int i4 = this.f8187o;
        if (i4 != 0) {
            textView.setText(i4);
        } else if (!TextUtils.isEmpty(this.f8188p)) {
            textView.setText(this.f8188p);
        }
        b(this.f8193u);
        Button button = (Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button);
        button.setOnClickListener(new i(this, 0));
        int i5 = this.f8189q;
        if (i5 != 0) {
            button.setText(i5);
        } else if (!TextUtils.isEmpty(this.f8190r)) {
            button.setText(this.f8190r);
        }
        Button button2 = (Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button);
        this.f8194v = button2;
        button2.setOnClickListener(new i(this, 1));
        int i6 = this.f8191s;
        if (i6 != 0) {
            this.f8194v.setText(i6);
        } else if (!TextUtils.isEmpty(this.f8192t)) {
            this.f8194v.setText(this.f8192t);
        }
        Button button3 = this.f8194v;
        if (button3 != null) {
            button3.setVisibility(isCancelable() ? 0 : 8);
        }
        this.f8193u.setOnClickListener(new i(this, 2));
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onDestroyView() {
        super.onDestroyView();
        this.f8184l = null;
        this.f8182j = null;
        this.f8183k = null;
        TimePickerView timePickerView = this.f8180h;
        if (timePickerView != null) {
            timePickerView.f8207l = null;
            this.f8180h = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        for (DialogInterface.OnDismissListener onDismissListener : this.f8179g) {
            onDismissListener.onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.f8196x);
        bundle.putInt("TIME_PICKER_INPUT_MODE", this.f8195w);
        bundle.putInt("TIME_PICKER_TITLE_RES", this.f8187o);
        bundle.putCharSequence("TIME_PICKER_TITLE_TEXT", this.f8188p);
        bundle.putInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", this.f8189q);
        bundle.putCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT", this.f8190r);
        bundle.putInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", this.f8191s);
        bundle.putCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT", this.f8192t);
        bundle.putInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", this.f8197y);
    }

    public void setActivePresenter(q qVar) {
        this.f8184l = qVar;
    }
}
