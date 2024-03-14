package com.android.launcher3.notification;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.touch.OverScroll;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class NotificationContainer extends FrameLayout implements SingleAxisSwipeDetector.Listener {
    private static final FloatProperty DRAG_TRANSLATION_X = new FloatProperty() { // from class: com.android.launcher3.notification.NotificationContainer.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((NotificationContainer) obj).mDragTranslationX);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            NotificationContainer.d((NotificationContainer) obj, f4);
        }
    };
    private static final Rect sTempRect = new Rect();
    private final ObjectAnimator mContentTranslateAnimator;
    private float mDragTranslationX;
    private boolean mIgnoreTouch;
    private final List mNotificationInfos;
    private PopupContainerWithArrow mPopupContainer;
    private final NotificationMainView mPrimaryView;
    private final NotificationMainView mSecondaryView;
    private final SingleAxisSwipeDetector mSwipeDetector;

    public NotificationContainer(Context context) {
        this(context, null, 0);
    }

    public static void d(NotificationContainer notificationContainer, float f4) {
        notificationContainer.mDragTranslationX = f4;
        float width = f4 / notificationContainer.getWidth();
        notificationContainer.mPrimaryView.onPrimaryDrag(width);
        if (notificationContainer.mSecondaryView.getNotificationInfo() == null) {
            notificationContainer.mSecondaryView.setAlpha(0.0f);
        } else {
            notificationContainer.mSecondaryView.onSecondaryDrag(width);
        }
    }

    public final void applyNotificationInfos(List list) {
        ((ArrayList) this.mNotificationInfos).clear();
        if (list.isEmpty()) {
            this.mPrimaryView.applyNotificationInfo(null);
            this.mSecondaryView.applyNotificationInfo(null);
            return;
        }
        ((ArrayList) this.mNotificationInfos).addAll(list);
        this.mPrimaryView.applyNotificationInfo((NotificationInfo) list.get(0));
        this.mSecondaryView.applyNotificationInfo(list.size() > 1 ? (NotificationInfo) list.get(1) : null);
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final boolean onDrag(float f4) {
        if (!this.mPrimaryView.canChildBeDismissed()) {
            f4 = OverScroll.dampedScroll(f4, getWidth());
        }
        float width = f4 / getWidth();
        this.mPrimaryView.onPrimaryDrag(width);
        if (this.mSecondaryView.getNotificationInfo() == null) {
            this.mSecondaryView.setAlpha(0.0f);
        } else {
            this.mSecondaryView.onSecondaryDrag(width);
        }
        this.mContentTranslateAnimator.cancel();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
        if (r0 < 0.0f) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
        r5 = -r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
        r5 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (r9 < 0.0f) goto L12;
     */
    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDragEnd(float r9) {
        /*
            r8 = this;
            com.android.launcher3.notification.NotificationMainView r0 = r8.mPrimaryView
            float r0 = r0.getTranslationX()
            int r1 = r8.getWidth()
            float r1 = (float) r1
            com.android.launcher3.notification.NotificationMainView r2 = r8.mPrimaryView
            boolean r2 = r2.canChildBeDismissed()
            r3 = 1
            r4 = 0
            r5 = 0
            if (r2 != 0) goto L17
            goto L3a
        L17:
            com.android.launcher3.touch.SingleAxisSwipeDetector r2 = r8.mSwipeDetector
            boolean r2 = r2.isFling(r9)
            if (r2 == 0) goto L24
            int r2 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r2 >= 0) goto L37
            goto L34
        L24:
            float r2 = java.lang.Math.abs(r0)
            r6 = 1073741824(0x40000000, float:2.0)
            float r6 = r1 / r6
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 <= 0) goto L3a
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 >= 0) goto L37
        L34:
            float r2 = -r1
            r5 = r2
            goto L38
        L37:
            r5 = r1
        L38:
            r2 = r3
            goto L3b
        L3a:
            r2 = r4
        L3b:
            float r6 = r5 - r0
            float r6 = r6 / r1
            long r6 = com.android.launcher3.touch.BaseSwipeDetector.calculateDuration(r9, r6)
            android.animation.ObjectAnimator r1 = r8.mContentTranslateAnimator
            r1.removeAllListeners()
            android.animation.ObjectAnimator r1 = r8.mContentTranslateAnimator
            android.animation.ObjectAnimator r1 = r1.setDuration(r6)
            y0.d r9 = y0.e.c(r9)
            r1.setInterpolator(r9)
            android.animation.ObjectAnimator r9 = r8.mContentTranslateAnimator
            r1 = 2
            float[] r1 = new float[r1]
            r1[r4] = r0
            r1[r3] = r5
            r9.setFloatValues(r1)
            com.android.launcher3.notification.NotificationMainView r9 = r8.mPrimaryView
            android.animation.ObjectAnimator r0 = r8.mContentTranslateAnimator
            com.android.launcher3.notification.NotificationContainer$2 r1 = new com.android.launcher3.notification.NotificationContainer$2
            r1.<init>()
            r0.addListener(r1)
            android.animation.ObjectAnimator r8 = r8.mContentTranslateAnimator
            r8.start()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.notification.NotificationContainer.onDragEnd(float):void");
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final void onDragStart(boolean z4, float f4) {
        this.mPopupContainer.showArrow(false);
    }

    public final boolean onInterceptSwipeEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            Rect rect = sTempRect;
            rect.set(getLeft(), getTop(), getRight(), getBottom());
            boolean z4 = !rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
            this.mIgnoreTouch = z4;
            if (!z4) {
                this.mPopupContainer.getParent().requestDisallowInterceptTouchEvent(true);
            }
        }
        if (this.mIgnoreTouch || this.mPrimaryView.getNotificationInfo() == null) {
            return false;
        }
        this.mSwipeDetector.onTouchEvent(motionEvent);
        return this.mSwipeDetector.isDraggingOrSettling();
    }

    public final boolean onSwipeEvent(MotionEvent motionEvent) {
        if (this.mIgnoreTouch || this.mPrimaryView.getNotificationInfo() == null) {
            return false;
        }
        this.mSwipeDetector.onTouchEvent(motionEvent);
        return true;
    }

    public final void setPopupView(PopupContainerWithArrow popupContainerWithArrow) {
        this.mPopupContainer = popupContainerWithArrow;
    }

    public final void trimNotifications(List list) {
        Iterator it = ((ArrayList) this.mNotificationInfos).iterator();
        while (it.hasNext()) {
            if (!((ArrayList) list).contains(((NotificationInfo) it.next()).notificationKey)) {
                it.remove();
            }
        }
        NotificationInfo notificationInfo = ((ArrayList) this.mNotificationInfos).size() > 0 ? (NotificationInfo) ((ArrayList) this.mNotificationInfos).get(0) : null;
        NotificationInfo notificationInfo2 = ((ArrayList) this.mNotificationInfos).size() > 1 ? (NotificationInfo) ((ArrayList) this.mNotificationInfos).get(1) : null;
        this.mPrimaryView.applyNotificationInfo(notificationInfo);
        this.mSecondaryView.applyNotificationInfo(notificationInfo2);
        this.mPrimaryView.onPrimaryDrag(0.0f);
        this.mSecondaryView.onSecondaryDrag(0.0f);
    }

    public final void updateBackgroundColor(int i4, AnimatorSet animatorSet) {
        this.mPrimaryView.updateBackgroundColor(i4, animatorSet);
        this.mSecondaryView.updateBackgroundColor(i4, animatorSet);
    }

    public final void updateHeader(int i4) {
        this.mPrimaryView.updateHeader(i4);
        this.mSecondaryView.updateHeader(i4 - 1);
    }

    public NotificationContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NotificationContainer(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mNotificationInfos = new ArrayList();
        this.mIgnoreTouch = false;
        this.mDragTranslationX = 0.0f;
        SingleAxisSwipeDetector singleAxisSwipeDetector = new SingleAxisSwipeDetector(getContext(), this, SingleAxisSwipeDetector.HORIZONTAL);
        this.mSwipeDetector = singleAxisSwipeDetector;
        singleAxisSwipeDetector.setDetectableScrollConditions(3, false);
        this.mContentTranslateAnimator = ObjectAnimator.ofFloat(this, DRAG_TRANSLATION_X, 0.0f);
        NotificationMainView notificationMainView = (NotificationMainView) View.inflate(getContext(), R.layout.notification_content, null);
        this.mPrimaryView = notificationMainView;
        NotificationMainView notificationMainView2 = (NotificationMainView) View.inflate(getContext(), R.layout.notification_content, null);
        this.mSecondaryView = notificationMainView2;
        notificationMainView2.setAlpha(0.0f);
        addView(notificationMainView2);
        addView(notificationMainView);
    }
}
