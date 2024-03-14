package com.android.launcher3.popup;

import android.content.Context;
import android.view.View;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.notification.NotificationContainer;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.views.ActivityContext;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class PopupLiveUpdateHandler implements PopupDataProvider.PopupDataChangeListener, View.OnAttachStateChangeListener {
    protected final Context mContext;
    protected final PopupContainerWithArrow mPopupContainerWithArrow;

    public PopupLiveUpdateHandler(Context context, PopupContainerWithArrow popupContainerWithArrow) {
        this.mContext = context;
        this.mPopupContainerWithArrow = popupContainerWithArrow;
    }

    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public final void onNotificationDotsUpdated(j jVar) {
        if (jVar.test(PackageUserKey.fromItemInfo((ItemInfo) this.mPopupContainerWithArrow.getOriginalIcon().getTag()))) {
            this.mPopupContainerWithArrow.updateNotificationHeader();
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        PopupDataProvider popupDataProvider = ((ActivityContext) this.mContext).getPopupDataProvider();
        if (popupDataProvider != null) {
            popupDataProvider.setChangeListener(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        PopupDataProvider popupDataProvider = ((ActivityContext) this.mContext).getPopupDataProvider();
        if (popupDataProvider != null) {
            popupDataProvider.setChangeListener(null);
        }
    }

    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public final void trimNotifications(Map map) {
        NotificationContainer notificationContainer = this.mPopupContainerWithArrow.getNotificationContainer();
        if (notificationContainer == null) {
            return;
        }
        DotInfo dotInfo = (DotInfo) map.get(PackageUserKey.fromItemInfo((ItemInfo) this.mPopupContainerWithArrow.getOriginalIcon().getTag()));
        if (dotInfo == null || ((ArrayList) dotInfo.getNotificationKeys()).size() == 0) {
            notificationContainer.setVisibility(8);
            this.mPopupContainerWithArrow.updateHiddenShortcuts();
            PopupContainerWithArrow popupContainerWithArrow = this.mPopupContainerWithArrow;
            popupContainerWithArrow.assignMarginsAndBackgrounds(popupContainerWithArrow);
            this.mPopupContainerWithArrow.updateArrowColor();
            return;
        }
        ArrayList<NotificationKeyData> arrayList = (ArrayList) dotInfo.getNotificationKeys();
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (NotificationKeyData notificationKeyData : arrayList) {
            arrayList2.add(notificationKeyData.notificationKey);
        }
        notificationContainer.trimNotifications(arrayList2);
    }
}
