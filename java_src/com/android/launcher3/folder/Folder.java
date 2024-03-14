package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Selection;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Alarm;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.AccessibleDragListenerAdapter;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.anim.KeyboardInsetAnimationCallback;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemFactory;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pageindicators.PageIndicatorDots;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarActivityContext$$ExternalSyntheticLambda8;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.ClipPathView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public class Folder extends AbstractFloatingView implements ClipPathView, DragSource, View.OnLongClickListener, DropTarget, FolderInfo.FolderListener, TextView.OnEditorActionListener, View.OnFocusChangeListener, DragController.DragListener, ExtendedEditText.OnBackKeyListener {
    protected final ActivityContext mActivityContext;
    private GradientDrawable mBackground;
    private Path mClipPath;
    FolderPagedView mContent;
    private AnimatorSet mCurrentAnimator;
    private View mCurrentDragView;
    int mCurrentScrollDir;
    private boolean mDeleteFolderOnDropCompleted;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mDestroyed;
    protected DragController mDragController;
    private boolean mDragInProgress;
    int mEmptyCellRank;
    FolderIcon mFolderIcon;
    public FolderNameEditText mFolderName;
    protected View mFooter;
    private int mFooterHeight;
    private LauncherAtom$FromState mFromLabelState;
    private CharSequence mFromTitle;
    public FolderInfo mInfo;
    private boolean mIsAnimatingClosed;
    private boolean mIsEditingName;
    private boolean mIsExternalDrag;
    private boolean mItemAddedBackToSelfViaIcon;
    final ArrayList mItemsInReadingOrder;
    boolean mItemsInvalidated;
    private KeyboardInsetAnimationCallback mKeyboardInsetAnimationCallback;
    protected final LauncherDelegate mLauncherDelegate;
    private final Alarm mOnExitAlarm;
    OnAlarmListener mOnExitAlarmListener;
    private TaskbarActivityContext$$ExternalSyntheticLambda8 mOnFolderStateChangedListener;
    private final Alarm mOnScrollHintAlarm;
    private PageIndicatorDots mPageIndicator;
    int mPrevTargetRank;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mRearrangeOnClose;
    private final Alarm mReorderAlarm;
    OnAlarmListener mReorderAlarmListener;
    private int mScrollAreaOffset;
    int mScrollHintDir;
    final Alarm mScrollPauseAlarm;
    @ViewDebug.ExportedProperty(category = "launcher", mapping = {@ViewDebug.IntToString(from = 0, to = "STATE_CLOSED"), @ViewDebug.IntToString(from = 1, to = "STATE_ANIMATING"), @ViewDebug.IntToString(from = 2, to = "STATE_OPEN")})
    private int mState;
    private StatsLogManager mStatsLogManager;
    private boolean mSuppressFolderDeletion;
    int mTargetRank;
    private static final Rect sTempRect = new Rect();
    public static final Comparator ITEM_POS_COMPARATOR = new AnonymousClass10();

    /* renamed from: com.android.launcher3.folder.Folder$10  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass10 implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            ItemInfo itemInfo = (ItemInfo) obj;
            ItemInfo itemInfo2 = (ItemInfo) obj2;
            int i4 = itemInfo.rank;
            int i5 = itemInfo2.rank;
            return (i4 == i5 && (i4 = itemInfo.cellY) == (i5 = itemInfo2.cellY)) ? itemInfo.cellX - itemInfo2.cellX : i4 - i5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.folder.Folder$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends AnimatorListenerAdapter {
        final /* synthetic */ AnimatorSet val$a;

        public AnonymousClass2(AnimatorSet animatorSet) {
            this.val$a = animatorSet;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            Folder.this.mCurrentAnimator = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            Folder.h(Folder.this, 1);
            Folder.this.mCurrentAnimator = this.val$a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.folder.Folder$4  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 extends AnimatorListenerAdapter {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4591d;
        final /* synthetic */ Folder this$0;

        public /* synthetic */ AnonymousClass4(Folder folder, int i4) {
            this.f4591d = i4;
            this.this$0 = folder;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            View childAt;
            switch (this.f4591d) {
                case 0:
                    Folder.h(this.this$0, 2);
                    this.this$0.announceAccessibilityChanges();
                    AccessibilityManagerCompat.sendFolderOpenedEventToTest(this.this$0.getContext());
                    CellLayout currentCellLayout = this.this$0.mContent.getCurrentCellLayout();
                    if (currentCellLayout == null || (childAt = currentCellLayout.getChildAt(0, 0)) == null) {
                        return;
                    }
                    childAt.requestFocus();
                    return;
                default:
                    if (Utilities.ATLEAST_R && this.this$0.mKeyboardInsetAnimationCallback != null) {
                        Folder folder = this.this$0;
                        folder.setWindowInsetsAnimationCallback(folder.mKeyboardInsetAnimationCallback);
                    }
                    this.this$0.closeComplete(true);
                    this.this$0.announceAccessibilityChanges();
                    this.this$0.mIsAnimatingClosed = false;
                    return;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            switch (this.f4591d) {
                case 0:
                    this.this$0.mFolderIcon.setIconVisible(false);
                    FolderIcon folderIcon = this.this$0.mFolderIcon;
                    if (folderIcon.getParent() instanceof FolderIcon.FolderIconParent) {
                        ((FolderIcon.FolderIconParent) folderIcon.getParent()).drawFolderLeaveBehindForIcon(folderIcon);
                        return;
                    }
                    return;
                default:
                    if (Utilities.ATLEAST_R) {
                        this.this$0.setWindowInsetsAnimationCallback(null);
                    }
                    this.this$0.mIsAnimatingClosed = true;
                    return;
            }
        }
    }

    /* renamed from: com.android.launcher3.folder.Folder$7  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass7 implements OnAlarmListener {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4592d;
        final /* synthetic */ Folder this$0;

        public /* synthetic */ AnonymousClass7(Folder folder, int i4) {
            this.f4592d = i4;
            this.this$0 = folder;
        }

        @Override // com.android.launcher3.OnAlarmListener
        public final void onAlarm(Alarm alarm) {
            int i4 = this.f4592d;
            Folder folder = this.this$0;
            switch (i4) {
                case 0:
                    folder.mContent.realTimeReorder(folder.mEmptyCellRank, folder.mTargetRank);
                    folder.mEmptyCellRank = folder.mTargetRank;
                    return;
                default:
                    folder.completeDragExit();
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class OnScrollHintListener implements OnAlarmListener {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4593d;
        private final DropTarget.DragObject mDragObject;
        final /* synthetic */ Folder this$0;

        public /* synthetic */ OnScrollHintListener(Folder folder, DropTarget.DragObject dragObject, int i4) {
            this.f4593d = i4;
            this.this$0 = folder;
            this.mDragObject = dragObject;
        }

        @Override // com.android.launcher3.OnAlarmListener
        public final void onAlarm(Alarm alarm) {
            int i4 = this.f4593d;
            DropTarget.DragObject dragObject = this.mDragObject;
            Folder folder = this.this$0;
            switch (i4) {
                case 0:
                    int i5 = folder.mCurrentScrollDir;
                    if (i5 == 0) {
                        folder.mContent.scrollLeft();
                        folder.mScrollHintDir = -1;
                    } else if (i5 != 1) {
                        return;
                    } else {
                        folder.mContent.scrollRight();
                        folder.mScrollHintDir = -1;
                    }
                    folder.mCurrentScrollDir = -1;
                    folder.mScrollPauseAlarm.setOnAlarmListener(new OnScrollHintListener(folder, dragObject, 1));
                    folder.mScrollPauseAlarm.setAlarm(folder.getResources().getInteger(R.integer.config_pageSnapAnimationDuration) + 150);
                    return;
                default:
                    folder.onDragOver(dragObject);
                    return;
            }
        }
    }

    public Folder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mReorderAlarm = new Alarm();
        this.mOnExitAlarm = new Alarm();
        this.mOnScrollHintAlarm = new Alarm();
        this.mScrollPauseAlarm = new Alarm();
        this.mItemsInReadingOrder = new ArrayList();
        this.mIsAnimatingClosed = false;
        this.mState = 0;
        this.mRearrangeOnClose = false;
        this.mItemsInvalidated = false;
        this.mDragInProgress = false;
        this.mDeleteFolderOnDropCompleted = false;
        this.mSuppressFolderDeletion = false;
        this.mItemAddedBackToSelfViaIcon = false;
        this.mIsEditingName = false;
        this.mScrollHintDir = -1;
        this.mCurrentScrollDir = -1;
        this.mReorderAlarmListener = new AnonymousClass7(this, 0);
        this.mOnExitAlarmListener = new AnonymousClass7(this, 1);
        setAlwaysDrawnWithCacheEnabled(false);
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(context);
        this.mActivityContext = activityContext;
        this.mLauncherDelegate = LauncherDelegate.from(activityContext);
        this.mStatsLogManager = StatsLogManager.newInstance(context);
        setFocusableInTouchMode(true);
    }

    public static void a(final Folder folder) {
        FolderNameInfos folderNameInfos = folder.mInfo.suggestedFolderNames;
        if (folderNameInfos != null && folderNameInfos.hasSuggestions()) {
            if (TextUtils.isEmpty(folder.mFolderName.getText()) && folder.mInfo.suggestedFolderNames.hasPrimary()) {
                folder.mFolderName.setHint("");
                folder.mFolderName.setText(folder.mInfo.suggestedFolderNames.getLabels()[0]);
                folder.mFolderName.selectAll();
            }
            folder.mFolderName.showKeyboard(true);
            final FolderNameEditText folderNameEditText = folder.mFolderName;
            List list = (List) Stream.of((Object[]) folder.mInfo.suggestedFolderNames.getLabels()).filter(new Predicate() { // from class: com.android.launcher3.folder.g
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (r1) {
                        case 0:
                            return Objects.nonNull((CharSequence) obj);
                        default:
                            Comparator comparator = Folder.ITEM_POS_COMPARATOR;
                            return !((String) obj).isEmpty();
                    }
                }
            }).map(new c(1)).filter(new Predicate() { // from class: com.android.launcher3.folder.g
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (r1) {
                        case 0:
                            return Objects.nonNull((CharSequence) obj);
                        default:
                            Comparator comparator = Folder.ITEM_POS_COMPARATOR;
                            return !((String) obj).isEmpty();
                    }
                }
            }).filter(new Predicate() { // from class: com.android.launcher3.folder.h
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return !((String) obj).equalsIgnoreCase(Folder.this.mFolderName.getText().toString());
                }
            }).collect(Collectors.toList());
            folderNameEditText.getClass();
            int min = Math.min(list.size(), 4);
            final CompletionInfo[] completionInfoArr = new CompletionInfo[min];
            for (int i4 = 0; i4 < min; i4++) {
                completionInfoArr[i4] = new CompletionInfo(i4, i4, (CharSequence) list.get(i4));
            }
            folderNameEditText.postDelayed(new Runnable() { // from class: com.android.launcher3.folder.m
                @Override // java.lang.Runnable
                public final void run() {
                    FolderNameEditText folderNameEditText2 = FolderNameEditText.this;
                    CompletionInfo[] completionInfoArr2 = completionInfoArr;
                    int i5 = FolderNameEditText.f4595d;
                    ((InputMethodManager) folderNameEditText2.getContext().getSystemService(InputMethodManager.class)).displayCompletions(folderNameEditText2, completionInfoArr2);
                }
            }, 40L);
        }
        folder.mFolderName.setHint("");
        folder.mIsEditingName = true;
    }

    public static View b(Folder folder, WorkspaceItemInfo workspaceItemInfo) {
        return folder.mContent.iterateOverItems(new a(1, workspaceItemInfo));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeComplete(boolean z4) {
        BaseDragLayer baseDragLayer = (BaseDragLayer) getParent();
        if (baseDragLayer != null) {
            baseDragLayer.removeView(this);
        }
        this.mDragController.removeDropTarget(this);
        clearFocus();
        FolderIcon folderIcon = this.mFolderIcon;
        if (folderIcon != null) {
            folderIcon.setVisibility(0);
            this.mFolderIcon.setIconVisible(true);
            this.mFolderIcon.mFolderName.setTextVisibility(true);
            if (z4) {
                FolderIcon folderIcon2 = this.mFolderIcon;
                folderIcon2.mBackground.getClass();
                folderIcon2.mBackground.getClass();
                this.mFolderIcon.onFolderClose(this.mContent.getCurrentPage());
                if (this.mFolderIcon.hasDot()) {
                    this.mFolderIcon.animateDotScale(0.0f, 1.0f);
                }
                this.mFolderIcon.requestFocus();
            }
        }
        if (this.mRearrangeOnClose) {
            rearrangeChildren();
            this.mRearrangeOnClose = false;
        }
        if (getItemCount() <= 1) {
            boolean z5 = this.mDragInProgress;
            if (!z5 && !this.mSuppressFolderDeletion) {
                replaceFolderWithFinalItem();
            } else if (z5) {
                this.mDeleteFolderOnDropCompleted = true;
            }
        } else if (!this.mDragInProgress) {
            this.mContent.unbindItems();
        }
        this.mSuppressFolderDeletion = false;
        this.mCurrentDragView = null;
        this.mIsExternalDrag = false;
        this.mState = 0;
        TaskbarActivityContext$$ExternalSyntheticLambda8 taskbarActivityContext$$ExternalSyntheticLambda8 = this.mOnFolderStateChangedListener;
        if (taskbarActivityContext$$ExternalSyntheticLambda8 != null) {
            TaskbarActivityContext.b(taskbarActivityContext$$ExternalSyntheticLambda8.f5068a, taskbarActivityContext$$ExternalSyntheticLambda8.f5069b, 0);
        }
        this.mContent.setCurrentPage(0);
    }

    public static Folder getOpen(ActivityContext activityContext) {
        return (Folder) AbstractFloatingView.getOpenView(activityContext, 1);
    }

    private int getTargetRank(DropTarget.DragObject dragObject, float[] fArr) {
        float[] visualCenter = dragObject.getVisualCenter(fArr);
        return this.mContent.findNearestArea(((int) visualCenter[0]) - getPaddingLeft(), ((int) visualCenter[1]) - getPaddingTop());
    }

    public static void h(Folder folder, int i4) {
        folder.mState = i4;
        TaskbarActivityContext$$ExternalSyntheticLambda8 taskbarActivityContext$$ExternalSyntheticLambda8 = folder.mOnFolderStateChangedListener;
        if (taskbarActivityContext$$ExternalSyntheticLambda8 != null) {
            TaskbarActivityContext.b(taskbarActivityContext$$ExternalSyntheticLambda8.f5068a, taskbarActivityContext$$ExternalSyntheticLambda8.f5069b, i4);
        }
    }

    private void showScrollHint(int i4, DropTarget.DragObject dragObject) {
        if (this.mScrollHintDir != i4) {
            this.mContent.showScrollHint(i4);
            this.mScrollHintDir = i4;
        }
        if (this.mOnScrollHintAlarm.alarmPending() && this.mCurrentScrollDir == i4) {
            return;
        }
        this.mCurrentScrollDir = i4;
        this.mOnScrollHintAlarm.cancelAlarm();
        this.mOnScrollHintAlarm.setOnAlarmListener(new OnScrollHintListener(this, dragObject, 0));
        this.mOnScrollHintAlarm.setAlarm(500L);
        this.mReorderAlarm.cancelAlarm();
        this.mTargetRank = this.mEmptyCellRank;
    }

    private void updateItemLocationsInDatabaseBatch(boolean z4) {
        FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(this.mActivityContext.getDeviceProfile().inv);
        folderGridOrganizer.setFolderInfo(this.mInfo);
        ArrayList arrayList = new ArrayList();
        int size = this.mInfo.contents.size();
        for (int i4 = 0; i4 < size; i4++) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) this.mInfo.contents.get(i4);
            if (folderGridOrganizer.updateRankAndPos(i4, workspaceItemInfo)) {
                arrayList.add(workspaceItemInfo);
            }
        }
        if (!arrayList.isEmpty()) {
            this.mLauncherDelegate.getModelWriter().moveItemsInDatabase(arrayList, this.mInfo.id);
        }
        if (z4 || size <= 1) {
            return;
        }
        Executors.MODEL_EXECUTOR.post(new b(this, 1));
    }

    @Override // com.android.launcher3.DropTarget
    public final boolean acceptDrop(DropTarget.DragObject dragObject) {
        int i4 = dragObject.dragInfo.itemType;
        return i4 == 0 || i4 == 6;
    }

    public final void animateOpen() {
        animateOpen(0, this.mInfo.contents);
    }

    public final void beginExternalDrag() {
        this.mIsExternalDrag = true;
        this.mDragInProgress = true;
        this.mDragController.addDragListener(this);
        ArrayList arrayList = new ArrayList(this.mInfo.contents);
        this.mEmptyCellRank = arrayList.size();
        arrayList.add(null);
        animateOpen(this.mEmptyCellRank / this.mContent.itemsPerPage(), arrayList);
    }

    public final void bind(FolderInfo folderInfo) {
        this.mInfo = folderInfo;
        this.mFromTitle = folderInfo.title;
        this.mFromLabelState = folderInfo.getFromLabelState();
        Collections.sort(folderInfo.contents, ITEM_POS_COMPARATOR);
        updateItemLocationsInDatabaseBatch(true);
        if (((BaseDragLayer.LayoutParams) getLayoutParams()) == null) {
            BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(0, 0);
            layoutParams.customPosition = true;
            setLayoutParams(layoutParams);
        }
        this.mItemsInvalidated = true;
        this.mInfo.addListener(this);
        if (TextUtils.isEmpty(this.mInfo.title)) {
            this.mFolderName.setText("");
            this.mFolderName.setHint(R.string.folder_hint_text);
        } else {
            this.mFolderName.setText(this.mInfo.title);
            this.mFolderName.setHint((CharSequence) null);
        }
        this.mFolderIcon.post(new b(this, 3));
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean canInterceptEventsInSystemGestureRegion() {
        return true;
    }

    public final void completeDragExit() {
        if (this.mIsOpen) {
            close(true);
            this.mRearrangeOnClose = true;
        } else if (this.mState == 1) {
            this.mRearrangeOnClose = true;
        } else {
            rearrangeChildren();
            this.mCurrentDragView = null;
            this.mIsExternalDrag = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.mClipPath == null) {
            this.mBackground.draw(canvas);
            super.dispatchDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.clipPath(this.mClipPath);
        this.mBackground.draw(canvas);
        canvas.restoreToCount(save);
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // android.view.View
    public final View focusSearch(int i4) {
        return FocusFinder.getInstance().findNextFocus(this, null, i4);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final View getAccessibilityInitialFocusView() {
        View firstItem = this.mContent.getFirstItem();
        return firstItem != null ? firstItem : super.getAccessibilityInitialFocusView();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final Pair getAccessibilityTarget() {
        FolderPagedView folderPagedView = this.mContent;
        return Pair.create(folderPagedView, this.mIsOpen ? folderPagedView.getAccessibilityDescription() : getContext().getString(R.string.folder_closed));
    }

    @Override // android.view.View
    public final Drawable getBackground() {
        return this.mBackground;
    }

    public final FolderPagedView getContent() {
        return this.mContent;
    }

    public final int getContentAreaHeight() {
        DeviceProfile deviceProfile = this.mActivityContext.getDeviceProfile();
        int i4 = (deviceProfile.availableHeightPx - deviceProfile.getTotalWorkspacePadding().y) - this.mFooterHeight;
        FolderPagedView folderPagedView = this.mContent;
        int i5 = 0;
        if (folderPagedView.getPageCount() > 0) {
            i5 = folderPagedView.getPaddingTop() + folderPagedView.getPageAt(0).getDesiredHeight() + folderPagedView.getPaddingBottom();
        }
        return Math.max(Math.min(i4, i5), 5);
    }

    @Override // com.android.launcher3.DropTarget
    public final void getHitRectRelativeToDragLayer(Rect rect) {
        getHitRect(rect);
        int i4 = rect.left;
        int i5 = this.mScrollAreaOffset;
        rect.left = i4 - i5;
        rect.right += i5;
    }

    public final ArrayList getIconsInReadingOrder() {
        if (this.mItemsInvalidated) {
            this.mItemsInReadingOrder.clear();
            this.mContent.iterateOverItems(new a(0, this));
            this.mItemsInvalidated = false;
        }
        return this.mItemsInReadingOrder;
    }

    public final int getItemCount() {
        return this.mInfo.contents.size();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        AnimatorSet animatorSet;
        this.mIsOpen = false;
        if (!z4 && (animatorSet = this.mCurrentAnimator) != null && animatorSet.isRunning()) {
            this.mCurrentAnimator.cancel();
        }
        if (this.mIsEditingName) {
            this.mFolderName.dispatchBackKey();
        }
        FolderIcon folderIcon = this.mFolderIcon;
        if (folderIcon != null && (folderIcon.getParent() instanceof FolderIcon.FolderIconParent)) {
            ((FolderIcon.FolderIconParent) folderIcon.getParent()).clearFolderLeaveBehind(folderIcon);
        }
        if (!z4) {
            closeComplete(false);
            post(new b(this, 2));
        } else if (!this.mIsAnimatingClosed) {
            this.mContent.completePendingPageChanges();
            FolderPagedView folderPagedView = this.mContent;
            folderPagedView.snapToPageImmediately(folderPagedView.getDestinationPage());
            AnimatorSet animatorSet2 = this.mCurrentAnimator;
            if (animatorSet2 != null && animatorSet2.isRunning()) {
                this.mCurrentAnimator.cancel();
            }
            AnimatorSet animator = new FolderAnimationManager(this, false).getAnimator();
            animator.addListener(new AnonymousClass4(this, 1));
            this.mLauncherDelegate.forEachVisibleWorkspacePage(new d(this, animator));
            animator.addListener(new AnonymousClass2(animator));
            animator.start();
        }
        this.mActivityContext.getDragLayer().sendAccessibilityEvent(32);
    }

    public final void hideItem(WorkspaceItemInfo workspaceItemInfo) {
        View iterateOverItems = this.mContent.iterateOverItems(new a(1, workspaceItemInfo));
        if (iterateOverItems != null) {
            iterateOverItems.setVisibility(4);
        }
    }

    public final boolean isDestroyed() {
        return this.mDestroyed;
    }

    @Override // com.android.launcher3.DropTarget
    public final boolean isDropEnabled() {
        return this.mState != 1;
    }

    public final boolean isEditingName() {
        return this.mIsEditingName;
    }

    public final boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 1) != 0;
    }

    public final void iterateOverItems(LauncherBindableItemsContainer$ItemOperator launcherBindableItemsContainer$ItemOperator) {
        this.mContent.iterateOverItems(launcherBindableItemsContainer$ItemOperator);
    }

    public final void notifyDrop() {
        if (this.mDragInProgress) {
            this.mItemAddedBackToSelfViaIcon = true;
        }
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public final void onAdd(int i4, WorkspaceItemInfo workspaceItemInfo) {
        FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(this.mActivityContext.getDeviceProfile().inv);
        folderGridOrganizer.setFolderInfo(this.mInfo);
        folderGridOrganizer.updateRankAndPos(i4, workspaceItemInfo);
        this.mLauncherDelegate.getModelWriter().addOrMoveItemInDatabase(workspaceItemInfo, this.mInfo.id, 0, workspaceItemInfo.cellX, workspaceItemInfo.cellY);
        updateItemLocationsInDatabaseBatch(false);
        if (this.mContent.areViewsBound()) {
            this.mContent.createAndAddViewForRank(i4, workspaceItemInfo);
        }
        this.mItemsInvalidated = true;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (Utilities.ATLEAST_R) {
            setTranslationY(0.0f);
            if (windowInsets.isVisible(WindowInsets.Type.ime())) {
                Insets insets = windowInsets.getInsets(WindowInsets.Type.ime());
                BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
                int i4 = this.mActivityContext.getDeviceProfile().heightPx - (layoutParams.f5329y + ((FrameLayout.LayoutParams) layoutParams).height);
                int i5 = insets.bottom;
                if (i5 > i4) {
                    setTranslationY((i4 - i5) - this.mFolderName.getPaddingBottom());
                }
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        requestFocus();
        super.onAttachedToWindow();
        this.mFolderName.addOnFocusChangeListener(this);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void onBackInvoked() {
        if (this.mIsEditingName) {
            this.mFolderName.dispatchBackKey();
        } else {
            super.onBackInvoked();
        }
    }

    @Override // com.android.launcher3.ExtendedEditText.OnBackKeyListener
    public final boolean onBackKey() {
        String obj = this.mFolderName.getText().toString();
        this.mInfo.setTitle(obj, this.mLauncherDelegate.getModelWriter());
        FolderIcon folderIcon = this.mFolderIcon;
        folderIcon.mFolderName.setText(obj);
        folderIcon.setContentDescription(folderIcon.getAccessiblityTitle(obj));
        if (TextUtils.isEmpty(this.mInfo.title)) {
            this.mFolderName.setHint(R.string.folder_hint_text);
            this.mFolderName.setText("");
        } else {
            this.mFolderName.setHint((CharSequence) null);
        }
        AccessibilityManagerCompat.sendCustomAccessibilityEvent(this, 32, getContext().getString(R.string.folder_renamed, obj));
        this.mFolderName.clearFocus();
        Selection.setSelection(this.mFolderName.getText(), 0, 0);
        this.mIsEditingName = false;
        return true;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            BaseDragLayer baseDragLayer = (BaseDragLayer) getParent();
            if (this.mIsEditingName) {
                if (baseDragLayer.isEventOverView(this.mFolderName, motionEvent)) {
                    return false;
                }
                this.mFolderName.dispatchBackKey();
                return true;
            } else if (!baseDragLayer.isEventOverView(this, motionEvent) && this.mLauncherDelegate.interceptOutsideTouch(motionEvent, baseDragLayer, this)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFolderName.removeOnFocusChangeListener(this);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        if (this.mIsExternalDrag && this.mDragInProgress) {
            completeDragExit();
        }
        this.mDragInProgress = false;
        this.mDragController.removeDragListener(this);
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragEnter(DropTarget.DragObject dragObject) {
        this.mPrevTargetRank = -1;
        this.mOnExitAlarm.cancelAlarm();
        this.mScrollAreaOffset = (dragObject.dragView.getDragRegionWidth() / 2) - dragObject.xOffset;
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragExit(DropTarget.DragObject dragObject) {
        if (!dragObject.dragComplete) {
            this.mOnExitAlarm.setOnAlarmListener(this.mOnExitAlarmListener);
            this.mOnExitAlarm.setAlarm(400L);
        }
        this.mReorderAlarm.cancelAlarm();
        this.mOnScrollHintAlarm.cancelAlarm();
        this.mScrollPauseAlarm.cancelAlarm();
        if (this.mScrollHintDir != -1) {
            FolderPagedView folderPagedView = this.mContent;
            if (folderPagedView.getScrollX() != folderPagedView.getScrollForPage(folderPagedView.getNextPage())) {
                folderPagedView.snapToPage(folderPagedView.getNextPage());
            }
            this.mScrollHintDir = -1;
        }
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragOver(DropTarget.DragObject dragObject) {
        if (this.mScrollPauseAlarm.alarmPending()) {
            return;
        }
        float[] fArr = new float[2];
        int targetRank = getTargetRank(dragObject, fArr);
        this.mTargetRank = targetRank;
        if (targetRank != this.mPrevTargetRank) {
            this.mReorderAlarm.cancelAlarm();
            this.mReorderAlarm.setOnAlarmListener(this.mReorderAlarmListener);
            this.mReorderAlarm.setAlarm(250L);
            this.mPrevTargetRank = this.mTargetRank;
            DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
            if (dragViewStateAnnouncer != null) {
                dragViewStateAnnouncer.announce(getContext().getString(R.string.move_to_position, Integer.valueOf(this.mTargetRank + 1)));
            }
        }
        float f4 = fArr[0];
        int nextPage = this.mContent.getNextPage();
        float cellWidth = this.mContent.getCurrentCellLayout().getCellWidth() * 0.45f;
        boolean z4 = f4 < cellWidth;
        boolean z5 = f4 > ((float) getWidth()) - cellWidth;
        if (nextPage > 0 && (!this.mContent.mIsRtl ? !z4 : !z5)) {
            showScrollHint(0, dragObject);
        } else if (nextPage < this.mContent.getPageCount() - 1 && (!this.mContent.mIsRtl ? !z5 : !z4)) {
            showScrollHint(1, dragObject);
        } else {
            this.mOnScrollHintAlarm.cancelAlarm();
            if (this.mScrollHintDir != -1) {
                FolderPagedView folderPagedView = this.mContent;
                if (folderPagedView.getScrollX() != folderPagedView.getScrollForPage(folderPagedView.getNextPage())) {
                    folderPagedView.snapToPage(folderPagedView.getNextPage());
                }
                this.mScrollHintDir = -1;
            }
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (dragObject.dragSource != this) {
            return;
        }
        FolderPagedView folderPagedView = this.mContent;
        View view = this.mCurrentDragView;
        int childCount = folderPagedView.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            folderPagedView.getPageAt(childCount).removeView(view);
        }
        if (dragObject.dragInfo instanceof WorkspaceItemInfo) {
            this.mItemsInvalidated = true;
            this.mInfo.removeListener(this);
            try {
                FolderInfo folderInfo = this.mInfo;
                folderInfo.getClass();
                folderInfo.removeAll(Collections.singletonList((WorkspaceItemInfo) dragObject.dragInfo), true);
                this.mInfo.addListener(this);
                updateTextViewFocus();
            } catch (Throwable th) {
                try {
                    this.mInfo.addListener(this);
                    updateTextViewFocus();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        this.mDragInProgress = true;
        this.mItemAddedBackToSelfViaIcon = false;
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDrop(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        View view;
        if (!this.mContent.rankOnCurrentPage(this.mEmptyCellRank)) {
            this.mTargetRank = getTargetRank(dragObject, null);
            ((AnonymousClass7) this.mReorderAlarmListener).onAlarm(this.mReorderAlarm);
            this.mOnScrollHintAlarm.cancelAlarm();
            this.mScrollPauseAlarm.cancelAlarm();
        }
        this.mContent.completePendingPageChanges();
        Launcher launcher = this.mLauncherDelegate.getLauncher();
        if (launcher == null) {
            return;
        }
        ItemInfo itemInfo = dragObject.dragInfo;
        PendingAddShortcutInfo pendingAddShortcutInfo = itemInfo instanceof PendingAddShortcutInfo ? (PendingAddShortcutInfo) itemInfo : null;
        WorkspaceItemInfo createWorkspaceItemInfo = pendingAddShortcutInfo != null ? pendingAddShortcutInfo.getActivityInfo(launcher).createWorkspaceItemInfo() : null;
        if (pendingAddShortcutInfo == null || createWorkspaceItemInfo != null) {
            if (createWorkspaceItemInfo == null) {
                ItemInfo itemInfo2 = dragObject.dragInfo;
                createWorkspaceItemInfo = itemInfo2 instanceof WorkspaceItemFactory ? ((WorkspaceItemFactory) itemInfo2).makeWorkspaceItem(launcher) : (WorkspaceItemInfo) itemInfo2;
            }
            if (this.mIsExternalDrag) {
                view = this.mContent.createAndAddViewForRank(this.mEmptyCellRank, createWorkspaceItemInfo);
                this.mLauncherDelegate.getModelWriter().addOrMoveItemInDatabase(createWorkspaceItemInfo, this.mInfo.id, 0, createWorkspaceItemInfo.cellX, createWorkspaceItemInfo.cellY);
                this.mIsExternalDrag = false;
            } else {
                view = this.mCurrentDragView;
                this.mContent.addViewForRank(view, createWorkspaceItemInfo, this.mEmptyCellRank);
            }
            if (dragObject.dragView.hasDrawn()) {
                float scaleX = getScaleX();
                float scaleY = getScaleY();
                setScaleX(1.0f);
                setScaleY(1.0f);
                launcher.getDragLayer().animateViewIntoPosition(dragObject.dragView, view, -1, null);
                setScaleX(scaleX);
                setScaleY(scaleY);
            } else {
                dragObject.deferDragViewCleanupPostAnimation = false;
                view.setVisibility(0);
            }
            this.mItemsInvalidated = true;
            rearrangeChildren();
            this.mInfo.removeListener(this);
            try {
                this.mInfo.add(this.mEmptyCellRank, createWorkspaceItemInfo, false);
                this.mInfo.addListener(this);
                updateTextViewFocus();
                if (dragObject.dragSource != this) {
                    updateItemLocationsInDatabaseBatch(false);
                }
            } catch (Throwable th) {
                try {
                    this.mInfo.addListener(this);
                    updateTextViewFocus();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } else {
            int i4 = this.mInfo.id;
            pendingAddShortcutInfo.container = i4;
            pendingAddShortcutInfo.rank = this.mEmptyCellRank;
            launcher.addPendingItem(pendingAddShortcutInfo, i4, pendingAddShortcutInfo.screenId, null, pendingAddShortcutInfo.spanX, pendingAddShortcutInfo.spanY);
            dragObject.deferDragViewCleanupPostAnimation = false;
            this.mRearrangeOnClose = true;
        }
        this.mDragInProgress = false;
        if (this.mContent.getPageCount() > 1) {
            this.mInfo.setOption(true, this.mLauncherDelegate.getModelWriter());
        }
        if (!launcher.isInState(LauncherState.EDIT_MODE)) {
            launcher.getStateManager().goToState$1(LauncherState.NORMAL);
        }
        DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
        if (dragViewStateAnnouncer != null) {
            dragViewStateAnnouncer.completeAction();
        }
        this.mStatsLogManager.logger().withItemInfo(dragObject.dragInfo).withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_COMPLETED);
    }

    @Override // com.android.launcher3.DragSource
    public final void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z4) {
        if (!z4) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) dragObject.dragInfo;
            View view2 = this.mCurrentDragView;
            KeyEvent.Callback createNewView = (view2 == null || view2.getTag() != workspaceItemInfo) ? this.mContent.createNewView(workspaceItemInfo) : this.mCurrentDragView;
            ArrayList iconsInReadingOrder = getIconsInReadingOrder();
            int boundToRange = Utilities.boundToRange(workspaceItemInfo.rank, 0, iconsInReadingOrder.size());
            workspaceItemInfo.rank = boundToRange;
            iconsInReadingOrder.add(boundToRange, createNewView);
            this.mContent.arrangeChildren(iconsInReadingOrder);
            this.mItemsInvalidated = true;
            this.mInfo.removeListener(this);
            try {
                this.mFolderIcon.onDrop(dragObject, true);
                this.mInfo.addListener(this);
                updateTextViewFocus();
            } catch (Throwable th) {
                try {
                    this.mInfo.addListener(this);
                    updateTextViewFocus();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } else if (this.mDeleteFolderOnDropCompleted && !this.mItemAddedBackToSelfViaIcon && view != this) {
            replaceFolderWithFinalItem();
        }
        if (view != this && this.mOnExitAlarm.alarmPending()) {
            this.mOnExitAlarm.cancelAlarm();
            if (!z4) {
                this.mSuppressFolderDeletion = true;
            }
            this.mScrollPauseAlarm.cancelAlarm();
            completeDragExit();
        }
        this.mDeleteFolderOnDropCompleted = false;
        this.mDragInProgress = false;
        this.mItemAddedBackToSelfViaIcon = false;
        this.mCurrentDragView = null;
        updateItemLocationsInDatabaseBatch(false);
        if (getItemCount() <= this.mContent.itemsPerPage()) {
            this.mInfo.setOption(false, this.mLauncherDelegate.getModelWriter());
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
        if (i4 == 6) {
            this.mFolderName.dispatchBackKey();
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        DeviceProfile deviceProfile = this.mActivityContext.getDeviceProfile();
        int i4 = deviceProfile.folderContentPaddingLeftRight;
        Resources resources = getResources();
        Resources.Theme theme = getContext().getTheme();
        ThreadLocal threadLocal = D.n.f278a;
        this.mBackground = (GradientDrawable) resources.getDrawable(R.drawable.round_rect_folder, theme);
        FolderPagedView folderPagedView = (FolderPagedView) findViewById(R.id.folder_content);
        this.mContent = folderPagedView;
        folderPagedView.setPadding(i4, deviceProfile.folderContentPaddingTop, i4, 0);
        this.mContent.setFolder(this);
        this.mPageIndicator = (PageIndicatorDots) findViewById(R.id.folder_page_indicator);
        FolderNameEditText folderNameEditText = (FolderNameEditText) findViewById(R.id.folder_name);
        this.mFolderName = folderNameEditText;
        folderNameEditText.setTextSize(0, deviceProfile.folderLabelTextSizePx);
        this.mFolderName.setOnBackKeyListener(this);
        this.mFolderName.setOnEditorActionListener(this);
        this.mFolderName.setSelectAllOnFocus(true);
        FolderNameEditText folderNameEditText2 = this.mFolderName;
        folderNameEditText2.setInputType((folderNameEditText2.getInputType() & (-32769)) | 524288 | 8192);
        this.mFolderName.forceDisableSuggestions();
        this.mFooter = findViewById(R.id.folder_footer);
        this.mFooterHeight = deviceProfile.folderFooterHeightPx;
        if (Utilities.ATLEAST_R) {
            KeyboardInsetAnimationCallback keyboardInsetAnimationCallback = new KeyboardInsetAnimationCallback(this);
            this.mKeyboardInsetAnimationCallback = keyboardInsetAnimationCallback;
            setWindowInsetsAnimationCallback(keyboardInsetAnimationCallback);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00e1  */
    @Override // android.view.View.OnFocusChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onFocusChange(android.view.View r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.Folder.onFocusChange(android.view.View, boolean):void");
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public final void onItemsChanged(boolean z4) {
        updateTextViewFocus();
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (this.mLauncherDelegate.isDraggingEnabled()) {
            startDrag(view, new DragOptions());
            return true;
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int max = Math.max(this.mContent.getDesiredWidth(), 5);
        int contentAreaHeight = getContentAreaHeight();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(contentAreaHeight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        FolderPagedView folderPagedView = this.mContent;
        int paddingRight = max - (folderPagedView.getPaddingRight() + folderPagedView.getPaddingLeft());
        int paddingBottom = contentAreaHeight - (folderPagedView.getPaddingBottom() + folderPagedView.getPaddingTop());
        int childCount = folderPagedView.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                this.mContent.measure(makeMeasureSpec, makeMeasureSpec2);
                this.mFooter.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(this.mFooterHeight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
                setMeasuredDimension(getPaddingRight() + getPaddingLeft() + max, getPaddingBottom() + getPaddingTop() + contentAreaHeight + this.mFooterHeight);
                return;
            }
            ((CellLayout) folderPagedView.getChildAt(childCount)).setFixedSize(paddingRight, paddingBottom);
        }
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public final void onRemove(List list) {
        this.mItemsInvalidated = true;
        Stream map = list.stream().map(new Function() { // from class: com.android.launcher3.folder.e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Folder.b(Folder.this, (WorkspaceItemInfo) obj);
            }
        });
        final FolderPagedView folderPagedView = this.mContent;
        Objects.requireNonNull(folderPagedView);
        map.forEach(new Consumer() { // from class: com.android.launcher3.folder.f
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FolderPagedView folderPagedView2 = FolderPagedView.this;
                View view = (View) obj;
                int childCount = folderPagedView2.getChildCount();
                while (true) {
                    childCount--;
                    if (childCount < 0) {
                        return;
                    }
                    folderPagedView2.getPageAt(childCount).removeView(view);
                }
            }
        });
        if (this.mState == 1) {
            this.mRearrangeOnClose = true;
        } else {
            rearrangeChildren();
        }
        if (getItemCount() <= 1) {
            if (this.mIsOpen) {
                close(true);
            } else {
                replaceFolderWithFinalItem();
            }
        }
    }

    @Override // com.android.launcher3.DropTarget
    public final void prepareAccessibilityDrop() {
        if (this.mReorderAlarm.alarmPending()) {
            this.mReorderAlarm.cancelAlarm();
            ((AnonymousClass7) this.mReorderAlarmListener).onAlarm(this.mReorderAlarm);
        }
    }

    public final void rearrangeChildren() {
        if (this.mContent.areViewsBound()) {
            this.mContent.arrangeChildren(getIconsInReadingOrder());
            this.mItemsInvalidated = true;
        }
    }

    public final void replaceFolderWithFinalItem() {
        this.mDestroyed = this.mLauncherDelegate.replaceFolderWithFinalItem(this);
    }

    @Override // com.android.launcher3.views.ClipPathView
    public final void setClipPath(Path path) {
        this.mClipPath = path;
        invalidate();
    }

    public final void setOnFolderStateChangedListener(TaskbarActivityContext$$ExternalSyntheticLambda8 taskbarActivityContext$$ExternalSyntheticLambda8) {
        this.mOnFolderStateChangedListener = taskbarActivityContext$$ExternalSyntheticLambda8;
    }

    public final void showItem(WorkspaceItemInfo workspaceItemInfo) {
        View iterateOverItems = this.mContent.iterateOverItems(new a(1, workspaceItemInfo));
        if (iterateOverItems != null) {
            iterateOverItems.setVisibility(0);
        }
    }

    public final void startDrag(View view, DragOptions dragOptions) {
        Object tag = view.getTag();
        if (tag instanceof WorkspaceItemInfo) {
            this.mEmptyCellRank = ((WorkspaceItemInfo) tag).rank;
            this.mCurrentDragView = view;
            this.mDragController.addDragListener(this);
            if (dragOptions.isAccessibleDrag) {
                this.mDragController.addDragListener(new AccessibleDragListenerAdapter(this.mContent, new c(0)) { // from class: com.android.launcher3.folder.Folder.1
                    @Override // com.android.launcher3.accessibility.AccessibleDragListenerAdapter
                    public final void enableAccessibleDrag(boolean z4) {
                        super.enableAccessibleDrag(z4);
                        Folder.this.mFooter.setImportantForAccessibility(z4 ? 4 : 0);
                    }
                });
            }
            this.mLauncherDelegate.beginDragShared(view, this, dragOptions);
        }
    }

    public final void updateTextViewFocus() {
        View firstItem = this.mContent.getFirstItem();
        final View lastItem = this.mContent.getLastItem();
        if (firstItem == null || lastItem == null) {
            setOnKeyListener(null);
            return;
        }
        this.mFolderName.setNextFocusDownId(lastItem.getId());
        this.mFolderName.setNextFocusRightId(lastItem.getId());
        this.mFolderName.setNextFocusLeftId(lastItem.getId());
        this.mFolderName.setNextFocusUpId(lastItem.getId());
        this.mFolderName.setNextFocusForwardId(firstItem.getId());
        setNextFocusDownId(firstItem.getId());
        setNextFocusRightId(firstItem.getId());
        setNextFocusLeftId(firstItem.getId());
        setNextFocusUpId(firstItem.getId());
        setOnKeyListener(new View.OnKeyListener() { // from class: com.android.launcher3.folder.Folder.9
            /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
                if (r4.hasModifiers(1) != false) goto L5;
             */
            @Override // android.view.View.OnKeyListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean onKey(android.view.View r2, int r3, android.view.KeyEvent r4) {
                /*
                    r1 = this;
                    r2 = 61
                    r0 = 0
                    if (r3 != r2) goto Ld
                    r2 = 1
                    boolean r3 = r4.hasModifiers(r2)
                    if (r3 == 0) goto Ld
                    goto Le
                Ld:
                    r2 = r0
                Le:
                    if (r2 == 0) goto L1f
                    com.android.launcher3.folder.Folder r2 = com.android.launcher3.folder.Folder.this
                    boolean r2 = r2.isFocused()
                    if (r2 == 0) goto L1f
                    android.view.View r1 = r2
                    boolean r1 = r1.requestFocus()
                    return r1
                L1f:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.Folder.AnonymousClass9.onKey(android.view.View, int, android.view.KeyEvent):boolean");
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0177  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void animateOpen(int r12, java.util.List r13) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.Folder.animateOpen(int, java.util.List):void");
    }
}
