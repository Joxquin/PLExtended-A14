package com.android.launcher3.widget.picker;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableRow;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.recyclerview.ViewHolderBinder;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.WidgetCell;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import com.android.launcher3.widget.util.WidgetsTableUtils;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class WidgetsListTableViewHolderBinder implements ViewHolderBinder {
    private final ActivityContext mActivityContext;
    private final int mCellPadding;
    private final Context mContext;
    private final View.OnClickListener mIconClickListener;
    private final View.OnLongClickListener mIconLongClickListener;
    private final LayoutInflater mLayoutInflater;

    public WidgetsListTableViewHolderBinder(Context context, LayoutInflater layoutInflater, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        this.mLayoutInflater = layoutInflater;
        this.mContext = context;
        this.mActivityContext = (ActivityContext) ActivityContext.lookupContext(context);
        this.mCellPadding = context.getResources().getDimensionPixelSize(R.dimen.widget_cell_horizontal_padding);
        this.mIconClickListener = onClickListener;
        this.mIconLongClickListener = onLongClickListener;
    }

    @Override // com.android.launcher3.recyclerview.ViewHolderBinder
    public final /* bridge */ /* synthetic */ E0 newViewHolder(RecyclerView recyclerView) {
        return newViewHolder((ViewGroup) recyclerView);
    }

    @Override // com.android.launcher3.recyclerview.ViewHolderBinder
    public final void unbindViewHolder(E0 e02) {
        WidgetsRowViewHolder widgetsRowViewHolder = (WidgetsRowViewHolder) e02;
        int childCount = widgetsRowViewHolder.tableContainer.getChildCount();
        ((HashMap) widgetsRowViewHolder.previewCache).clear();
        for (int i4 = 0; i4 < childCount; i4++) {
            TableRow tableRow = (TableRow) widgetsRowViewHolder.tableContainer.getChildAt(i4);
            int childCount2 = tableRow.getChildCount();
            for (int i5 = 0; i5 < childCount2; i5++) {
                ((WidgetCell) tableRow.getChildAt(i5)).clear();
            }
        }
    }

    @Override // com.android.launcher3.recyclerview.ViewHolderBinder
    public final void bindViewHolder(final WidgetsRowViewHolder widgetsRowViewHolder, WidgetsListContentEntry widgetsListContentEntry, int i4, List list) {
        WidgetsListDrawableState widgetsListDrawableState;
        TableRow tableRow;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            ((HashMap) widgetsRowViewHolder.previewCache).put((WidgetItem) pair.first, (Bitmap) pair.second);
        }
        WidgetsListTableView widgetsListTableView = widgetsRowViewHolder.tableContainer;
        boolean z4 = (i4 & 1) != 0;
        boolean z5 = (i4 & 2) != 0;
        if (z4 && z5) {
            widgetsListDrawableState = WidgetsListDrawableState.SINGLE;
        } else if (z4) {
            widgetsListDrawableState = WidgetsListDrawableState.FIRST;
        } else if (z5) {
            widgetsListDrawableState = WidgetsListDrawableState.LAST;
        } else {
            widgetsListDrawableState = WidgetsListDrawableState.MIDDLE;
        }
        widgetsListTableView.setListDrawableState(widgetsListDrawableState);
        ArrayList arrayList = (ArrayList) WidgetsTableUtils.groupWidgetItemsUsingRowPxWithReordering(widgetsListContentEntry.mWidgets, this.mContext, this.mActivityContext.getDeviceProfile(), widgetsListContentEntry.getMaxSpanSize(), this.mCellPadding);
        for (int size = arrayList.size(); size < widgetsListTableView.getChildCount(); size++) {
            widgetsListTableView.getChildAt(size).setVisibility(8);
        }
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            List list2 = (List) arrayList.get(i5);
            if (i5 < widgetsListTableView.getChildCount()) {
                tableRow = (TableRow) widgetsListTableView.getChildAt(i5);
            } else {
                tableRow = new TableRow(widgetsListTableView.getContext());
                tableRow.setGravity(48);
                widgetsListTableView.addView(tableRow);
            }
            if (tableRow.getChildCount() > list2.size()) {
                for (int size2 = list2.size(); size2 < tableRow.getChildCount(); size2++) {
                    tableRow.getChildAt(size2).setVisibility(8);
                }
            } else {
                for (int childCount = tableRow.getChildCount(); childCount < list2.size(); childCount++) {
                    WidgetCell widgetCell = (WidgetCell) this.mLayoutInflater.inflate(R.layout.widget_cell, (ViewGroup) tableRow, false);
                    View findViewById = widgetCell.findViewById(R.id.widget_preview_container);
                    findViewById.setOnClickListener(this.mIconClickListener);
                    findViewById.setOnLongClickListener(this.mIconLongClickListener);
                    widgetCell.setAnimatePreview();
                    tableRow.addView(widgetCell);
                }
            }
        }
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            List list3 = (List) arrayList.get(i6);
            for (int i7 = 0; i7 < list3.size(); i7++) {
                TableRow tableRow2 = (TableRow) widgetsListTableView.getChildAt(i6);
                tableRow2.setVisibility(0);
                WidgetCell widgetCell2 = (WidgetCell) tableRow2.getChildAt(i7);
                widgetCell2.clear();
                final WidgetItem widgetItem = (WidgetItem) list3.get(i7);
                widgetCell2.setVisibility(0);
                widgetCell2.applyFromCellItem(widgetItem, 1.0f, new Consumer() { // from class: com.android.launcher3.widget.picker.o
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        WidgetsRowViewHolder widgetsRowViewHolder2 = WidgetsRowViewHolder.this;
                        Pair create = Pair.create(widgetItem, (Bitmap) obj);
                        q qVar = widgetsRowViewHolder2.mDataCallback;
                        if (qVar != null) {
                            qVar.accept(create);
                        }
                        if (widgetsRowViewHolder2.getBindingAdapter() != null) {
                            widgetsRowViewHolder2.getBindingAdapter().notifyItemChanged(widgetsRowViewHolder2.getBindingAdapterPosition(), create);
                        }
                    }
                }, (Bitmap) ((HashMap) widgetsRowViewHolder.previewCache).get(widgetItem));
            }
        }
    }

    public final WidgetsRowViewHolder newViewHolder(ViewGroup viewGroup) {
        return new WidgetsRowViewHolder(this.mLayoutInflater.inflate(R.layout.widgets_table_container, viewGroup, false));
    }
}
