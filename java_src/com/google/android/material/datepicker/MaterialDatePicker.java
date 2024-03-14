package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsetsController;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.d0;
import androidx.fragment.app.AbstractC0220p0;
import androidx.fragment.app.C0189a;
import androidx.fragment.app.DialogFragment;
import com.android.systemui.shared.R;
import com.google.android.material.internal.CheckableImageButton;
import f.C0832a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import s2.C1394a;
import t2.View$OnTouchListenerC1407a;
import x2.C1468f;
/* loaded from: classes.dex */
public final class MaterialDatePicker extends DialogFragment {

    /* renamed from: z  reason: collision with root package name */
    public static final /* synthetic */ int f7886z = 0;

    /* renamed from: d  reason: collision with root package name */
    public final LinkedHashSet f7887d = new LinkedHashSet();

    /* renamed from: e  reason: collision with root package name */
    public final LinkedHashSet f7888e = new LinkedHashSet();

    /* renamed from: f  reason: collision with root package name */
    public final LinkedHashSet f7889f = new LinkedHashSet();

    /* renamed from: g  reason: collision with root package name */
    public final LinkedHashSet f7890g = new LinkedHashSet();

    /* renamed from: h  reason: collision with root package name */
    public int f7891h;

    /* renamed from: i  reason: collision with root package name */
    public InterfaceC0732g f7892i;

    /* renamed from: j  reason: collision with root package name */
    public PickerFragment f7893j;

    /* renamed from: k  reason: collision with root package name */
    public C0729d f7894k;

    /* renamed from: l  reason: collision with root package name */
    public MaterialCalendar f7895l;

    /* renamed from: m  reason: collision with root package name */
    public int f7896m;

    /* renamed from: n  reason: collision with root package name */
    public CharSequence f7897n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f7898o;

    /* renamed from: p  reason: collision with root package name */
    public int f7899p;

    /* renamed from: q  reason: collision with root package name */
    public int f7900q;

    /* renamed from: r  reason: collision with root package name */
    public CharSequence f7901r;

    /* renamed from: s  reason: collision with root package name */
    public int f7902s;

    /* renamed from: t  reason: collision with root package name */
    public CharSequence f7903t;

    /* renamed from: u  reason: collision with root package name */
    public TextView f7904u;

    /* renamed from: v  reason: collision with root package name */
    public CheckableImageButton f7905v;

    /* renamed from: w  reason: collision with root package name */
    public C2.i f7906w;

    /* renamed from: x  reason: collision with root package name */
    public Button f7907x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f7908y;

    public static int d(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        int i4 = new z(H.c()).f7972g;
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * i4;
        return ((i4 - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean e(Context context) {
        return f(16843277, context);
    }

    public static boolean f(int i4, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(A2.c.b(R.attr.materialCalendarStyle, context, MaterialCalendar.class.getCanonicalName()).data, new int[]{i4});
        boolean z4 = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z4;
    }

    public final InterfaceC0732g b() {
        if (this.f7892i == null) {
            this.f7892i = (InterfaceC0732g) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f7892i;
    }

    public final void g() {
        PickerFragment pickerFragment;
        requireContext();
        int i4 = this.f7891h;
        if (i4 == 0) {
            i4 = b().d();
        }
        InterfaceC0732g b4 = b();
        C0729d c0729d = this.f7894k;
        MaterialCalendar materialCalendar = new MaterialCalendar();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i4);
        bundle.putParcelable("GRID_SELECTOR_KEY", b4);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c0729d);
        bundle.putParcelable("CURRENT_MONTH_KEY", c0729d.f7923g);
        materialCalendar.setArguments(bundle);
        this.f7895l = materialCalendar;
        if (this.f7905v.isChecked()) {
            InterfaceC0732g b5 = b();
            C0729d c0729d2 = this.f7894k;
            pickerFragment = new MaterialTextInputPicker();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i4);
            bundle2.putParcelable("DATE_SELECTOR_KEY", b5);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", c0729d2);
            pickerFragment.setArguments(bundle2);
        } else {
            pickerFragment = this.f7895l;
        }
        this.f7893j = pickerFragment;
        h();
        AbstractC0220p0 childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        C0189a c0189a = new C0189a(childFragmentManager);
        c0189a.g(this.f7893j, R.id.mtrl_calendar_frame);
        if (c0189a.f3368g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        c0189a.f3369h = false;
        c0189a.f3379r.y(c0189a, false);
        this.f7893j.b(new v(this));
    }

    public final void h() {
        InterfaceC0732g b4 = b();
        getContext();
        String c4 = b4.c();
        this.f7904u.setContentDescription(String.format(getString(R.string.mtrl_picker_announce_current_selection), c4));
        this.f7904u.setText(c4);
    }

    public final void i(CheckableImageButton checkableImageButton) {
        this.f7905v.setContentDescription(this.f7905v.isChecked() ? checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f7889f.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f7891h = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f7892i = (InterfaceC0732g) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f7894k = (C0729d) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f7896m = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f7897n = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f7899p = bundle.getInt("INPUT_MODE_KEY");
        this.f7900q = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f7901r = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f7902s = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f7903t = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog() {
        Context requireContext = requireContext();
        requireContext();
        int i4 = this.f7891h;
        if (i4 == 0) {
            i4 = b().d();
        }
        Dialog dialog = new Dialog(requireContext, i4);
        Context context = dialog.getContext();
        this.f7898o = e(context);
        int i5 = A2.c.b(R.attr.colorSurface, context, MaterialDatePicker.class.getCanonicalName()).data;
        C2.i iVar = new C2.i(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        this.f7906w = iVar;
        iVar.j(context);
        this.f7906w.l(ColorStateList.valueOf(i5));
        C2.i iVar2 = this.f7906w;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        iVar2.k(androidx.core.view.D.d(decorView));
        return dialog;
    }

    @Override // androidx.fragment.app.K
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f7898o ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.f7898o) {
            inflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(d(context), -2));
        } else {
            inflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(d(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(R.id.mtrl_picker_header_selection_text);
        this.f7904u = textView;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.A.e(textView, 1);
        this.f7905v = (CheckableImageButton) inflate.findViewById(R.id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.mtrl_picker_title_text);
        CharSequence charSequence = this.f7897n;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f7896m);
        }
        this.f7905v.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f7905v;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842912}, C0832a.a(R.drawable.material_ic_calendar_black_24dp, context));
        stateListDrawable.addState(new int[0], C0832a.a(R.drawable.material_ic_edit_black_24dp, context));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f7905v.setChecked(this.f7899p != 0);
        androidx.core.view.J.h(this.f7905v, null);
        i(this.f7905v);
        this.f7905v.setOnClickListener(new t(this, 2));
        this.f7907x = (Button) inflate.findViewById(R.id.confirm_button);
        if (b().h()) {
            this.f7907x.setEnabled(true);
        } else {
            this.f7907x.setEnabled(false);
        }
        this.f7907x.setTag("CONFIRM_BUTTON_TAG");
        CharSequence charSequence2 = this.f7901r;
        if (charSequence2 != null) {
            this.f7907x.setText(charSequence2);
        } else {
            int i4 = this.f7900q;
            if (i4 != 0) {
                this.f7907x.setText(i4);
            }
        }
        this.f7907x.setOnClickListener(new t(this, 0));
        Button button = (Button) inflate.findViewById(R.id.cancel_button);
        button.setTag("CANCEL_BUTTON_TAG");
        CharSequence charSequence3 = this.f7903t;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i5 = this.f7902s;
            if (i5 != 0) {
                button.setText(i5);
            }
        }
        button.setOnClickListener(new t(this, 1));
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f7890g.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f7891h);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f7892i);
        C0727b c0727b = new C0727b(this.f7894k);
        z zVar = this.f7895l.f7874h;
        if (zVar != null) {
            c0727b.f7917c = Long.valueOf(zVar.f7974i);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", c0727b.f7919e);
        z p4 = z.p(c0727b.f7915a);
        z p5 = z.p(c0727b.f7916b);
        InterfaceC0728c interfaceC0728c = (InterfaceC0728c) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l4 = c0727b.f7917c;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new C0729d(p4, p5, interfaceC0728c, l4 == null ? null : z.p(l4.longValue()), c0727b.f7918d));
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f7896m);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f7897n);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f7900q);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f7901r);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f7902s);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f7903t);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f7898o) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f7906w);
            if (!this.f7908y) {
                View findViewById = requireView().findViewById(R.id.fullscreen_header);
                Integer valueOf = findViewById.getBackground() instanceof ColorDrawable ? Integer.valueOf(((ColorDrawable) findViewById.getBackground()).getColor()) : null;
                boolean z4 = valueOf == null || valueOf.intValue() == 0;
                int a4 = C1394a.a(window.getContext(), 16842801, -16777216);
                if (z4) {
                    valueOf = Integer.valueOf(a4);
                }
                Integer valueOf2 = Integer.valueOf(a4);
                window.setDecorFitsSystemWindows(false);
                window.getContext();
                window.getContext();
                window.setStatusBarColor(0);
                window.setNavigationBarColor(0);
                C1468f.a(window, C1394a.c(0) || C1394a.c(valueOf.intValue()));
                boolean z5 = C1394a.c(0) || C1394a.c(valueOf2.intValue());
                window.getDecorView();
                d0 d0Var = new d0(window);
                WindowInsetsController windowInsetsController = d0Var.f3108a;
                Window window2 = d0Var.f3109b;
                if (z5) {
                    if (window2 != null) {
                        View decorView = window2.getDecorView();
                        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
                    }
                    windowInsetsController.setSystemBarsAppearance(16, 16);
                } else {
                    if (window2 != null) {
                        View decorView2 = window2.getDecorView();
                        decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
                    }
                    windowInsetsController.setSystemBarsAppearance(0, 16);
                }
                u uVar = new u(findViewById.getLayoutParams().height, findViewById, findViewById.getPaddingTop());
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                androidx.core.view.D.l(findViewById, uVar);
                this.f7908y = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f7906w, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new View$OnTouchListenerC1407a(requireDialog(), rect));
        }
        g();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onStop() {
        this.f7893j.f7912d.clear();
        super.onStop();
    }
}
