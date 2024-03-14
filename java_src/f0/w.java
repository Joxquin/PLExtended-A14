package f0;

import android.app.PendingIntent;
import android.app.TimePickerDialog;
import android.content.Intent;
import android.util.Log;
import android.widget.TimePicker;
import androidx.slice.SliceItem;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes.dex */
public final class w implements TimePickerDialog.OnTimeSetListener {

    /* renamed from: a  reason: collision with root package name */
    public final SliceItem f9250a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9251b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x f9252c;

    public w(x xVar, SliceItem sliceItem, int i4) {
        this.f9252c = xVar;
        this.f9250a = sliceItem;
        this.f9251b = i4;
    }

    @Override // android.app.TimePickerDialog.OnTimeSetListener
    public final void onTimeSet(TimePicker timePicker, int i4, int i5) {
        Date time = Calendar.getInstance().getTime();
        time.setHours(i4);
        time.setMinutes(i5);
        SliceItem sliceItem = this.f9250a;
        if (sliceItem != null) {
            try {
                sliceItem.a(this.f9252c.getContext(), new Intent().addFlags(268435456).putExtra("android.app.slice.extra.RANGE_VALUE", time.getTime()));
                x xVar = this.f9252c;
                if (xVar.f9073d != null) {
                    C0836c c0836c = new C0836c(xVar.b(), 7, 8, this.f9251b);
                    ((SearchResultIconSlice) this.f9252c.f9073d).k(this.f9250a, c0836c);
                }
            } catch (PendingIntent.CanceledException e4) {
                Log.e("RowView", "PendingIntent for slice cannot be sent", e4);
            }
        }
    }
}
