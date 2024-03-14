package f1;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.widget.WidgetCell;
import com.android.launcher3.widget.WidgetsBottomSheet;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class k implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f9319a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ WidgetsBottomSheet f9320b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ LinearLayout f9321c;

    public /* synthetic */ k(WidgetsBottomSheet widgetsBottomSheet, LinearLayout linearLayout, int i4) {
        this.f9319a = i4;
        this.f9320b = widgetsBottomSheet;
        this.f9321c = linearLayout;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f9319a) {
            case 0:
                WidgetsBottomSheet widgetsBottomSheet = this.f9320b;
                int i4 = WidgetsBottomSheet.f5381d;
                widgetsBottomSheet.getClass();
                TableRow tableRow = new TableRow(widgetsBottomSheet.getContext());
                tableRow.setGravity(48);
                ((ArrayList) obj).forEach(new k(widgetsBottomSheet, tableRow, 1));
                ((TableLayout) this.f9321c).addView(tableRow);
                return;
            default:
                WidgetsBottomSheet widgetsBottomSheet2 = this.f9320b;
                TableRow tableRow2 = (TableRow) this.f9321c;
                int i5 = WidgetsBottomSheet.f5381d;
                WidgetCell widgetCell = (WidgetCell) LayoutInflater.from(widgetsBottomSheet2.getContext()).inflate(R.layout.widget_cell, (ViewGroup) tableRow2, false);
                View findViewById = widgetCell.findViewById(R.id.widget_preview_container);
                findViewById.setOnClickListener(widgetsBottomSheet2);
                findViewById.setOnLongClickListener(widgetsBottomSheet2);
                widgetCell.setAnimatePreview();
                widgetCell.setSourceContainer(-112);
                tableRow2.addView(widgetCell);
                widgetCell.applyFromCellItem((WidgetItem) obj, 1.0f, new C0857g(widgetCell), null);
                return;
        }
    }
}
