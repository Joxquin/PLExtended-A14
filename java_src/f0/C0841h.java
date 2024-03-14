package f0;

import android.app.DatePickerDialog;
import android.app.PendingIntent;
import android.content.Intent;
import android.util.Log;
import android.widget.DatePicker;
import androidx.slice.SliceItem;
import androidx.slice.widget.GridRowView;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
import java.util.Calendar;
import java.util.Date;
/* renamed from: f0.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0841h implements DatePickerDialog.OnDateSetListener {

    /* renamed from: a  reason: collision with root package name */
    public final SliceItem f9184a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9185b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ GridRowView f9186c;

    public C0841h(GridRowView gridRowView, SliceItem sliceItem, int i4) {
        this.f9186c = gridRowView;
        this.f9184a = sliceItem;
        this.f9185b = i4;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public final void onDateSet(DatePicker datePicker, int i4, int i5, int i6) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i4, i5, i6);
        Date time = calendar.getTime();
        SliceItem sliceItem = this.f9184a;
        if (sliceItem != null) {
            try {
                sliceItem.a(this.f9186c.getContext(), new Intent().addFlags(268435456).putExtra("android.app.slice.extra.RANGE_VALUE", time.getTime()));
                GridRowView gridRowView = this.f9186c;
                if (gridRowView.f9073d != null) {
                    C0836c c0836c = new C0836c(gridRowView.b(), 6, 7, this.f9185b);
                    ((SearchResultIconSlice) this.f9186c.f9073d).k(this.f9184a, c0836c);
                }
            } catch (PendingIntent.CanceledException e4) {
                Log.e("GridRowView", "PendingIntent for slice cannot be sent", e4);
            }
        }
    }
}
