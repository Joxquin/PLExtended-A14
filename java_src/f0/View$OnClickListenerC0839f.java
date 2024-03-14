package f0;

import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.view.View;
import androidx.slice.SliceItem;
import androidx.slice.widget.GridRowView;
import com.android.systemui.shared.R;
import java.util.Calendar;
import java.util.Date;
/* renamed from: f0.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0839f implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Date f9178d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f9179e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ SliceItem f9180f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f9181g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ GridRowView f9182h;

    public View$OnClickListenerC0839f(GridRowView gridRowView, Date date, boolean z4, SliceItem sliceItem, int i4) {
        this.f9182h = gridRowView;
        this.f9178d = date;
        this.f9179e = z4;
        this.f9180f = sliceItem;
        this.f9181g = i4;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(this.f9178d);
        if (this.f9179e) {
            new DatePickerDialog(this.f9182h.getContext(), R.style.DialogTheme, new C0841h(this.f9182h, this.f9180f, this.f9181g), calendar.get(1), calendar.get(2), calendar.get(5)).show();
        } else {
            new TimePickerDialog(this.f9182h.getContext(), R.style.DialogTheme, new C0842i(this.f9182h, this.f9180f, this.f9181g), calendar.get(11), calendar.get(12), false).show();
        }
    }
}
