package com.android.launcher3.recyclerview;

import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes.dex */
public interface ViewHolderBinder {
    void bindViewHolder(E0 e02, Object obj, int i4, List list);

    E0 newViewHolder(RecyclerView recyclerView);

    default void unbindViewHolder(E0 e02) {
    }
}
