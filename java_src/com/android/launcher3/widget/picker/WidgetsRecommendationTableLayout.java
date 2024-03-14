package com.android.launcher3.widget.picker;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TableRow;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.widget.WidgetCell;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import f1.C0857g;
import java.util.List;
/* loaded from: classes.dex */
public final class WidgetsRecommendationTableLayout extends TableLayout {
    private float mRecommendationTableMaxHeight;
    private View.OnClickListener mWidgetCellOnClickListener;
    private View.OnLongClickListener mWidgetCellOnLongClickListener;
    private final float mWidgetCellTextViewsHeight;
    private final float mWidgetCellVerticalPadding;
    private final float mWidgetsRecommendationTableVerticalPadding;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class RecommendationTableData {
        private final float mPreviewScale;
        private final List mRecommendationTable;

        public RecommendationTableData(List list, float f4) {
            this.mRecommendationTable = list;
            this.mPreviewScale = f4;
        }
    }

    public WidgetsRecommendationTableLayout(Context context) {
        this(context, null);
    }

    private RecommendationTableData fitRecommendedWidgetsToTableSpace(float f4, List list) {
        if (f4 < 0.5f) {
            Log.w("WidgetsRecommendationTableLayout", "Hide recommended widgets. Can't down scale previews to " + f4);
            return new RecommendationTableData(List.of(), f4);
        }
        float f5 = this.mWidgetsRecommendationTableVerticalPadding;
        DeviceProfile deviceProfile = Launcher.getLauncher(getContext()).getDeviceProfile();
        for (int i4 = 0; i4 < list.size(); i4++) {
            List list2 = (List) list.get(i4);
            float f6 = 0.0f;
            for (int i5 = 0; i5 < list2.size(); i5++) {
                f6 = Math.max(f6, (WidgetSizes.getWidgetItemSizePx(getContext(), deviceProfile, (WidgetItem) list2.get(i5)).getHeight() * f4) + this.mWidgetCellTextViewsHeight + this.mWidgetCellVerticalPadding);
            }
            f5 += f6;
        }
        return f5 < this.mRecommendationTableMaxHeight ? new RecommendationTableData(list, f4) : list.size() > 1 ? fitRecommendedWidgetsToTableSpace(f4, list.subList(0, list.size() - 1)) : fitRecommendedWidgetsToTableSpace(f4 * 0.9f, list);
    }

    public final void setRecommendedWidgets(float f4, List list) {
        this.mRecommendationTableMaxHeight = f4;
        RecommendationTableData fitRecommendedWidgetsToTableSpace = fitRecommendedWidgetsToTableSpace(1.0f, list);
        if (fitRecommendedWidgetsToTableSpace.mRecommendationTable.size() == 0) {
            setVisibility(8);
            return;
        }
        removeAllViews();
        for (int i4 = 0; i4 < fitRecommendedWidgetsToTableSpace.mRecommendationTable.size(); i4++) {
            TableRow tableRow = new TableRow(getContext());
            tableRow.setGravity(48);
            for (WidgetItem widgetItem : (List) fitRecommendedWidgetsToTableSpace.mRecommendationTable.get(i4)) {
                WidgetCell widgetCell = (WidgetCell) LayoutInflater.from(getContext()).inflate(R.layout.widget_cell, (ViewGroup) tableRow, false);
                View findViewById = widgetCell.findViewById(R.id.widget_preview_container);
                findViewById.setOnClickListener(this.mWidgetCellOnClickListener);
                findViewById.setOnLongClickListener(this.mWidgetCellOnLongClickListener);
                widgetCell.setAnimatePreview();
                widgetCell.setSourceContainer(-111);
                tableRow.addView(widgetCell);
                widgetCell.applyFromCellItem(widgetItem, fitRecommendedWidgetsToTableSpace.mPreviewScale, new C0857g(widgetCell), null);
                widgetCell.showBadge();
            }
            addView(tableRow);
        }
        setVisibility(0);
    }

    public final void setWidgetCellLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mWidgetCellOnLongClickListener = onLongClickListener;
    }

    public final void setWidgetCellOnClickListener(View.OnClickListener onClickListener) {
        this.mWidgetCellOnClickListener = onClickListener;
    }

    public WidgetsRecommendationTableLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRecommendationTableMaxHeight = Float.MAX_VALUE;
        this.mWidgetsRecommendationTableVerticalPadding = getResources().getDimensionPixelSize(R.dimen.recommended_widgets_table_vertical_padding) * 2;
        this.mWidgetCellVerticalPadding = getResources().getDimensionPixelSize(R.dimen.widget_cell_vertical_padding) * 2;
        this.mWidgetCellTextViewsHeight = getResources().getDimension(R.dimen.widget_cell_font_size) * 4.0f;
    }
}
