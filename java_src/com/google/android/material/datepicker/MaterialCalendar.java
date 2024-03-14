package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.I0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.V;
import com.android.systemui.shared.R;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.GregorianCalendar;
/* loaded from: classes.dex */
public final class MaterialCalendar extends PickerFragment {

    /* renamed from: e  reason: collision with root package name */
    public int f7871e;

    /* renamed from: f  reason: collision with root package name */
    public InterfaceC0732g f7872f;

    /* renamed from: g  reason: collision with root package name */
    public C0729d f7873g;

    /* renamed from: h  reason: collision with root package name */
    public z f7874h;

    /* renamed from: i  reason: collision with root package name */
    public CalendarSelector f7875i;

    /* renamed from: j  reason: collision with root package name */
    public C0731f f7876j;

    /* renamed from: k  reason: collision with root package name */
    public RecyclerView f7877k;

    /* renamed from: l  reason: collision with root package name */
    public RecyclerView f7878l;

    /* renamed from: m  reason: collision with root package name */
    public View f7879m;

    /* renamed from: n  reason: collision with root package name */
    public View f7880n;
    static final Object MONTHS_VIEW_GROUP_TAG = "MONTHS_VIEW_GROUP_TAG";
    static final Object NAVIGATION_PREV_TAG = "NAVIGATION_PREV_TAG";
    static final Object NAVIGATION_NEXT_TAG = "NAVIGATION_NEXT_TAG";
    static final Object SELECTOR_TOGGLE_TAG = "SELECTOR_TOGGLE_TAG";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum CalendarSelector {
        DAY,
        YEAR
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public final boolean b(v vVar) {
        return super.b(vVar);
    }

    public final void d(z zVar) {
        z zVar2 = ((D) this.f7878l.getAdapter()).f7859a.f7920d;
        Calendar calendar = zVar2.f7969d;
        if (!(calendar instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        int i4 = zVar.f7971f;
        int i5 = zVar2.f7971f;
        int i6 = zVar.f7970e;
        int i7 = zVar2.f7970e;
        int i8 = (i6 - i7) + ((i4 - i5) * 12);
        z zVar3 = this.f7874h;
        if (!(calendar instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        int i9 = i8 - ((zVar3.f7970e - i7) + ((zVar3.f7971f - i5) * 12));
        boolean z4 = Math.abs(i9) > 3;
        boolean z5 = i9 > 0;
        this.f7874h = zVar;
        if (z4 && z5) {
            this.f7878l.scrollToPosition(i8 - 3);
            this.f7878l.post(new RunnableC0736k(this, i8));
        } else if (!z4) {
            this.f7878l.post(new RunnableC0736k(this, i8));
        } else {
            this.f7878l.scrollToPosition(i8 + 3);
            this.f7878l.post(new RunnableC0736k(this, i8));
        }
    }

    public final void e(CalendarSelector calendarSelector) {
        this.f7875i = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.f7877k.getLayoutManager().scrollToPosition(this.f7874h.f7971f - ((K) this.f7877k.getAdapter()).f7870a.f7873g.f7920d.f7971f);
            this.f7879m.setVisibility(0);
            this.f7880n.setVisibility(8);
        } else if (calendarSelector == CalendarSelector.DAY) {
            this.f7879m.setVisibility(8);
            this.f7880n.setVisibility(0);
            d(this.f7874h);
        }
    }

    @Override // androidx.fragment.app.K
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f7871e = bundle.getInt("THEME_RES_ID_KEY");
        this.f7872f = (InterfaceC0732g) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.f7873g = (C0729d) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f7874h = (z) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.K
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i4;
        int i5;
        V v4;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f7871e);
        this.f7876j = new C0731f(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        z zVar = this.f7873g.f7920d;
        if (MaterialDatePicker.e(contextThemeWrapper)) {
            i4 = R.layout.mtrl_calendar_vertical;
            i5 = 1;
        } else {
            i4 = R.layout.mtrl_calendar_horizontal;
            i5 = 0;
        }
        View inflate = cloneInContext.inflate(i4, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
        int i6 = A.f7848i;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding) * (i6 - 1)) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i6) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) inflate.findViewById(R.id.mtrl_calendar_days_of_week);
        androidx.core.view.J.h(gridView, new l(this, 0));
        int i7 = this.f7873g.f7924h;
        gridView.setAdapter((ListAdapter) (i7 > 0 ? new C0735j(i7) : new C0735j()));
        gridView.setNumColumns(zVar.f7972g);
        gridView.setEnabled(false);
        this.f7878l = (RecyclerView) inflate.findViewById(R.id.mtrl_calendar_months);
        getContext();
        this.f7878l.setLayoutManager(new m(this, i5, i5));
        this.f7878l.setTag(MONTHS_VIEW_GROUP_TAG);
        D d4 = new D(contextThemeWrapper, this.f7872f, this.f7873g, new n(this));
        this.f7878l.setAdapter(d4);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView3 = (RecyclerView) inflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f7877k = recyclerView3;
        if (recyclerView3 != null) {
            recyclerView3.setHasFixedSize(true);
            this.f7877k.setLayoutManager(new GridLayoutManager(integer));
            this.f7877k.setAdapter(new K(this));
            this.f7877k.addItemDecoration(new o(this));
        }
        if (inflate.findViewById(R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(R.id.month_navigation_fragment_toggle);
            materialButton.setTag(SELECTOR_TOGGLE_TAG);
            androidx.core.view.J.h(materialButton, new l(this, 1));
            MaterialButton materialButton2 = (MaterialButton) inflate.findViewById(R.id.month_navigation_previous);
            materialButton2.setTag(NAVIGATION_PREV_TAG);
            MaterialButton materialButton3 = (MaterialButton) inflate.findViewById(R.id.month_navigation_next);
            materialButton3.setTag(NAVIGATION_NEXT_TAG);
            this.f7879m = inflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
            this.f7880n = inflate.findViewById(R.id.mtrl_calendar_day_selector_frame);
            e(CalendarSelector.DAY);
            materialButton.setText(this.f7874h.q());
            this.f7878l.addOnScrollListener(new p(this, d4, materialButton));
            materialButton.setOnClickListener(new q(this));
            materialButton3.setOnClickListener(new r(this, d4, 0));
            materialButton2.setOnClickListener(new r(this, d4, 1));
        }
        if (!MaterialDatePicker.e(contextThemeWrapper) && (recyclerView2 = (v4 = new V()).f3909a) != (recyclerView = this.f7878l)) {
            I0 i02 = v4.f3910b;
            if (recyclerView2 != null) {
                recyclerView2.removeOnScrollListener(i02);
                v4.f3909a.setOnFlingListener(null);
            }
            v4.f3909a = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() != null) {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
                v4.f3909a.addOnScrollListener(i02);
                v4.f3909a.setOnFlingListener(v4);
                new Scroller(v4.f3909a.getContext(), new DecelerateInterpolator());
                v4.f();
            }
        }
        RecyclerView recyclerView4 = this.f7878l;
        z zVar2 = this.f7874h;
        z zVar3 = d4.f7859a.f7920d;
        if (zVar3.f7969d instanceof GregorianCalendar) {
            recyclerView4.scrollToPosition((zVar2.f7970e - zVar3.f7970e) + ((zVar2.f7971f - zVar3.f7971f) * 12));
            return inflate;
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // androidx.fragment.app.K
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f7871e);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f7872f);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f7873g);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f7874h);
    }
}
