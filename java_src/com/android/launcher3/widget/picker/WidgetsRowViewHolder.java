package com.android.launcher3.widget.picker;

import android.view.View;
import androidx.recyclerview.widget.E0;
import com.android.systemui.shared.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class WidgetsRowViewHolder extends E0 {
    q mDataCallback;
    public final Map previewCache;
    public final WidgetsListTableView tableContainer;

    public WidgetsRowViewHolder(View view) {
        super(view);
        this.previewCache = new HashMap();
        this.tableContainer = (WidgetsListTableView) view.findViewById(R.id.widgets_table);
    }
}
