package f0;

import android.app.PendingIntent;
import android.app.TimePickerDialog;
import android.content.Intent;
import android.util.Log;
import android.widget.TimePicker;
import androidx.slice.SliceItem;
import androidx.slice.widget.GridRowView;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
import java.util.Calendar;
import java.util.Date;
/* renamed from: f0.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0842i implements TimePickerDialog.OnTimeSetListener {

    /* renamed from: a  reason: collision with root package name */
    public final SliceItem f9187a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9188b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ GridRowView f9189c;

    public C0842i(GridRowView gridRowView, SliceItem sliceItem, int i4) {
        this.f9189c = gridRowView;
        this.f9187a = sliceItem;
        this.f9188b = i4;
    }

    @Override // android.app.TimePickerDialog.OnTimeSetListener
    public final void onTimeSet(TimePicker timePicker, int i4, int i5) {
        Date time = Calendar.getInstance().getTime();
        time.setHours(i4);
        time.setMinutes(i5);
        SliceItem sliceItem = this.f9187a;
        if (sliceItem != null) {
            try {
                sliceItem.a(this.f9189c.getContext(), new Intent().addFlags(268435456).putExtra("android.app.slice.extra.RANGE_VALUE", time.getTime()));
                GridRowView gridRowView = this.f9189c;
                if (gridRowView.f9073d != null) {
                    C0836c c0836c = new C0836c(gridRowView.b(), 7, 8, this.f9188b);
                    ((SearchResultIconSlice) this.f9189c.f9073d).k(this.f9187a, c0836c);
                }
            } catch (PendingIntent.CanceledException e4) {
                Log.e("GridRowView", "PendingIntent for slice cannot be sent", e4);
            }
        }
    }
}
