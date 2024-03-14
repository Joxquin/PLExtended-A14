package f0;

import android.app.DatePickerDialog;
import android.app.PendingIntent;
import android.content.Intent;
import android.util.Log;
import android.widget.DatePicker;
import androidx.slice.SliceItem;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes.dex */
public final class v implements DatePickerDialog.OnDateSetListener {

    /* renamed from: a  reason: collision with root package name */
    public final SliceItem f9247a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9248b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x f9249c;

    public v(x xVar, SliceItem sliceItem, int i4) {
        this.f9249c = xVar;
        this.f9247a = sliceItem;
        this.f9248b = i4;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public final void onDateSet(DatePicker datePicker, int i4, int i5, int i6) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i4, i5, i6);
        Date time = calendar.getTime();
        SliceItem sliceItem = this.f9247a;
        if (sliceItem != null) {
            try {
                sliceItem.a(this.f9249c.getContext(), new Intent().addFlags(268435456).putExtra("android.app.slice.extra.RANGE_VALUE", time.getTime()));
                x xVar = this.f9249c;
                if (xVar.f9073d != null) {
                    C0836c c0836c = new C0836c(xVar.b(), 6, 7, this.f9248b);
                    ((SearchResultIconSlice) this.f9249c.f9073d).k(this.f9247a, c0836c);
                }
            } catch (PendingIntent.CanceledException e4) {
                Log.e("RowView", "PendingIntent for slice cannot be sent", e4);
            }
        }
    }
}
