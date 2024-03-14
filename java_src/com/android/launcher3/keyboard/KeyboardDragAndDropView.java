package com.android.launcher3.keyboard;

import M.e;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.PagedView;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.keyboard.KeyboardDragAndDropView;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.ToIntBiFunction;
import java.util.function.ToIntFunction;
/* loaded from: classes.dex */
public class KeyboardDragAndDropView extends AbstractFloatingView implements Insettable, StateManager.StateListener {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4692d = 0;
    private VirtualNodeInfo mCurrentSelection;
    private final ArrayList mDelegates;
    private final RectFocusIndicator mFocusIndicator;
    private final ArrayList mIntList;
    private final Launcher mLauncher;
    private final ArrayList mNodes;
    private final e mTempNodeInfo;
    private final Rect mTempRect;
    private final Rect mTempRect2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class RectFocusIndicator extends ItemFocusIndicatorHelper {
        public RectFocusIndicator(View view) {
            super(view, GraphicsUtils.getAttrColor(16843829, view.getContext()));
            this.mPaint.setStrokeWidth(view.getResources().getDimension(R.dimen.keyboard_drag_stroke_width));
            this.mPaint.setStyle(Paint.Style.STROKE);
        }

        @Override // com.android.launcher3.keyboard.ItemFocusIndicatorHelper
        public final void viewToRect(Object obj, Rect rect) {
            rect.set((Rect) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class VirtualNodeInfo {
        public final DragAndDropAccessibilityDelegate delegate;
        public final int id;

        public VirtualNodeInfo(DragAndDropAccessibilityDelegate dragAndDropAccessibilityDelegate, int i4) {
            this.id = i4;
            this.delegate = dragAndDropAccessibilityDelegate;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VirtualNodeInfo) {
                VirtualNodeInfo virtualNodeInfo = (VirtualNodeInfo) obj;
                return this.id == virtualNodeInfo.id && this.delegate.equals(virtualNodeInfo.delegate);
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.id), this.delegate);
        }
    }

    public KeyboardDragAndDropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static /* synthetic */ void b(final KeyboardDragAndDropView keyboardDragAndDropView, final DragAndDropAccessibilityDelegate dragAndDropAccessibilityDelegate) {
        keyboardDragAndDropView.mIntList.clear();
        dragAndDropAccessibilityDelegate.getVisibleVirtualViews(keyboardDragAndDropView.mIntList);
        keyboardDragAndDropView.mIntList.forEach(new Consumer() { // from class: N0.d
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                KeyboardDragAndDropView.this.mNodes.add(new KeyboardDragAndDropView.VirtualNodeInfo(dragAndDropAccessibilityDelegate, ((Integer) obj).intValue()));
            }
        });
    }

    private void setCurrentSelection(VirtualNodeInfo virtualNodeInfo) {
        this.mCurrentSelection = virtualNodeInfo;
        e eVar = this.mTempNodeInfo;
        virtualNodeInfo.delegate.onPopulateNodeForVirtualView(virtualNodeInfo.id, eVar);
        ((TextView) findViewById(R.id.label)).setText(eVar.f1349a.getContentDescription());
        Rect rect = new Rect();
        this.mTempNodeInfo.f1349a.getBoundsInParent(rect);
        CellLayout host = virtualNodeInfo.delegate.getHost();
        ViewParent parent = host.getParent();
        if (parent instanceof PagedView) {
            PagedView pagedView = (PagedView) parent;
            int indexOfChild = pagedView.indexOfChild(host);
            pagedView.setCurrentPage(indexOfChild);
            rect.offset(pagedView.getScrollX() - pagedView.getScrollForPage(indexOfChild), 0);
        }
        float[] fArr = {rect.left, rect.top, rect.right, rect.bottom};
        Utilities.getDescendantCoordRelativeToAncestor(host, this.mLauncher.getDragLayer(), fArr, true, false);
        new RectF(fArr[0], fArr[1], fArr[2], fArr[3]).roundOut(rect);
        this.mFocusIndicator.changeFocus(rect, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchUnhandledMove(View view, int i4) {
        ToIntBiFunction toIntBiFunction;
        ToIntFunction toIntFunction;
        int applyAsInt;
        this.mDelegates.clear();
        this.mNodes.clear();
        Folder open = Folder.getOpen(this.mLauncher);
        PagedView workspace = open == null ? this.mLauncher.getWorkspace() : open.getContent();
        int pageCount = workspace.getPageCount();
        for (int i5 = 0; i5 < pageCount; i5++) {
            this.mDelegates.add(((CellLayout) workspace.getChildAt(i5)).getDragAndDropAccessibilityDelegate());
        }
        if (open == null) {
            this.mDelegates.add(workspace.getNextPage() + 1, this.mLauncher.getHotseat().getDragAndDropAccessibilityDelegate());
        }
        this.mDelegates.forEach(new Consumer() { // from class: N0.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                KeyboardDragAndDropView.b(KeyboardDragAndDropView.this, (DragAndDropAccessibilityDelegate) obj);
            }
        });
        VirtualNodeInfo virtualNodeInfo = null;
        if (!this.mNodes.isEmpty()) {
            int indexOf = this.mNodes.indexOf(this.mCurrentSelection);
            if (this.mCurrentSelection != null && indexOf >= 0) {
                int size = this.mNodes.size();
                if (i4 == 1) {
                    virtualNodeInfo = (VirtualNodeInfo) this.mNodes.get(((indexOf + size) - 1) % size);
                } else if (i4 != 2) {
                    if (i4 == 17) {
                        toIntBiFunction = new ToIntBiFunction() { // from class: N0.b
                            @Override // java.util.function.ToIntBiFunction
                            public final int applyAsInt(Object obj, Object obj2) {
                                int i6;
                                int i7;
                                switch (r1) {
                                    case 0:
                                        int i8 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj2).left;
                                        i7 = ((Rect) obj).left;
                                        break;
                                    case 1:
                                        int i9 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj).left;
                                        i7 = ((Rect) obj2).left;
                                        break;
                                    case 2:
                                        int i10 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj).top;
                                        i7 = ((Rect) obj2).top;
                                        break;
                                    default:
                                        int i11 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj2).top;
                                        i7 = ((Rect) obj).top;
                                        break;
                                }
                                return i6 - i7;
                            }
                        };
                        toIntFunction = new ToIntFunction() { // from class: N0.c
                            @Override // java.util.function.ToIntFunction
                            public final int applyAsInt(Object obj) {
                                switch (r1) {
                                    case 0:
                                        return ((Rect) obj).centerY();
                                    case 1:
                                        return ((Rect) obj).centerY();
                                    case 2:
                                        return ((Rect) obj).centerX();
                                    default:
                                        return ((Rect) obj).centerX();
                                }
                            }
                        };
                    } else if (i4 == 33) {
                        toIntBiFunction = new ToIntBiFunction() { // from class: N0.b
                            @Override // java.util.function.ToIntBiFunction
                            public final int applyAsInt(Object obj, Object obj2) {
                                int i6;
                                int i7;
                                switch (r1) {
                                    case 0:
                                        int i8 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj2).left;
                                        i7 = ((Rect) obj).left;
                                        break;
                                    case 1:
                                        int i9 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj).left;
                                        i7 = ((Rect) obj2).left;
                                        break;
                                    case 2:
                                        int i10 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj).top;
                                        i7 = ((Rect) obj2).top;
                                        break;
                                    default:
                                        int i11 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj2).top;
                                        i7 = ((Rect) obj).top;
                                        break;
                                }
                                return i6 - i7;
                            }
                        };
                        toIntFunction = new ToIntFunction() { // from class: N0.c
                            @Override // java.util.function.ToIntFunction
                            public final int applyAsInt(Object obj) {
                                switch (r1) {
                                    case 0:
                                        return ((Rect) obj).centerY();
                                    case 1:
                                        return ((Rect) obj).centerY();
                                    case 2:
                                        return ((Rect) obj).centerX();
                                    default:
                                        return ((Rect) obj).centerX();
                                }
                            }
                        };
                    } else if (i4 == 66) {
                        toIntBiFunction = new ToIntBiFunction() { // from class: N0.b
                            @Override // java.util.function.ToIntBiFunction
                            public final int applyAsInt(Object obj, Object obj2) {
                                int i6;
                                int i7;
                                switch (r1) {
                                    case 0:
                                        int i8 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj2).left;
                                        i7 = ((Rect) obj).left;
                                        break;
                                    case 1:
                                        int i9 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj).left;
                                        i7 = ((Rect) obj2).left;
                                        break;
                                    case 2:
                                        int i10 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj).top;
                                        i7 = ((Rect) obj2).top;
                                        break;
                                    default:
                                        int i11 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj2).top;
                                        i7 = ((Rect) obj).top;
                                        break;
                                }
                                return i6 - i7;
                            }
                        };
                        toIntFunction = new ToIntFunction() { // from class: N0.c
                            @Override // java.util.function.ToIntFunction
                            public final int applyAsInt(Object obj) {
                                switch (r1) {
                                    case 0:
                                        return ((Rect) obj).centerY();
                                    case 1:
                                        return ((Rect) obj).centerY();
                                    case 2:
                                        return ((Rect) obj).centerX();
                                    default:
                                        return ((Rect) obj).centerX();
                                }
                            }
                        };
                    } else if (i4 == 130) {
                        toIntBiFunction = new ToIntBiFunction() { // from class: N0.b
                            @Override // java.util.function.ToIntBiFunction
                            public final int applyAsInt(Object obj, Object obj2) {
                                int i6;
                                int i7;
                                switch (r1) {
                                    case 0:
                                        int i8 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj2).left;
                                        i7 = ((Rect) obj).left;
                                        break;
                                    case 1:
                                        int i9 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj).left;
                                        i7 = ((Rect) obj2).left;
                                        break;
                                    case 2:
                                        int i10 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj).top;
                                        i7 = ((Rect) obj2).top;
                                        break;
                                    default:
                                        int i11 = KeyboardDragAndDropView.f4692d;
                                        i6 = ((Rect) obj2).top;
                                        i7 = ((Rect) obj).top;
                                        break;
                                }
                                return i6 - i7;
                            }
                        };
                        toIntFunction = new ToIntFunction() { // from class: N0.c
                            @Override // java.util.function.ToIntFunction
                            public final int applyAsInt(Object obj) {
                                switch (r1) {
                                    case 0:
                                        return ((Rect) obj).centerY();
                                    case 1:
                                        return ((Rect) obj).centerY();
                                    case 2:
                                        return ((Rect) obj).centerX();
                                    default:
                                        return ((Rect) obj).centerX();
                                }
                            }
                        };
                    }
                    VirtualNodeInfo virtualNodeInfo2 = this.mCurrentSelection;
                    e eVar = this.mTempNodeInfo;
                    virtualNodeInfo2.delegate.onPopulateNodeForVirtualView(virtualNodeInfo2.id, eVar);
                    eVar.e(this.mTempRect);
                    float f4 = Float.MAX_VALUE;
                    for (int i6 = 0; i6 < size; i6++) {
                        VirtualNodeInfo virtualNodeInfo3 = (VirtualNodeInfo) this.mNodes.get(i6);
                        e eVar2 = this.mTempNodeInfo;
                        virtualNodeInfo3.delegate.onPopulateNodeForVirtualView(virtualNodeInfo3.id, eVar2);
                        eVar2.e(this.mTempRect2);
                        if (toIntBiFunction.applyAsInt(this.mTempRect, this.mTempRect2) > 0) {
                            int applyAsInt2 = toIntFunction.applyAsInt(this.mTempRect2) - toIntFunction.applyAsInt(this.mTempRect);
                            float f5 = (float) ((applyAsInt2 * applyAsInt2 * 13) + (applyAsInt * applyAsInt));
                            if (f5 < f4) {
                                virtualNodeInfo = virtualNodeInfo3;
                                f4 = f5;
                            }
                        }
                    }
                } else {
                    virtualNodeInfo = (VirtualNodeInfo) this.mNodes.get((indexOf + 1) % size);
                }
            }
        }
        if (virtualNodeInfo == null) {
            return false;
        }
        setCurrentSelection(virtualNodeInfo);
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        this.mLauncher.getDragLayer().removeView(this);
        this.mLauncher.getStateManager().removeStateListener(this);
        this.mLauncher.setDefaultKeyMode(3);
        this.mIsOpen = false;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 1024) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onDraw(Canvas canvas) {
        this.mFocusIndicator.draw(canvas);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i4, KeyEvent keyEvent) {
        VirtualNodeInfo virtualNodeInfo;
        if (i4 != 66 || (virtualNodeInfo = this.mCurrentSelection) == null) {
            return super.onKeyUp(i4, keyEvent);
        }
        virtualNodeInfo.delegate.onPerformActionForVirtualView(virtualNodeInfo.id, 16);
        return true;
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionComplete(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        VirtualNodeInfo virtualNodeInfo = this.mCurrentSelection;
        if (virtualNodeInfo != null) {
            setCurrentSelection(virtualNodeInfo);
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionStart(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        if (launcherState == LauncherState.SPRING_LOADED || launcherState == LauncherState.EDIT_MODE) {
            return;
        }
        close(false);
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        setPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    public final void showForIcon(View view, ItemInfo itemInfo, DragOptions dragOptions) {
        this.mIsOpen = true;
        this.mLauncher.getDragLayer().addView(this);
        this.mLauncher.getStateManager().addStateListener(this);
        CellLayout cellLayout = (CellLayout) view.getParent().getParent();
        float[] fArr = {cellLayout.getCellWidth() / 2, cellLayout.getCellHeight() / 2};
        Utilities.getDescendantCoordRelativeToAncestor(view, cellLayout, fArr, false, false);
        ItemLongClickListener.beginDrag(view, this.mLauncher, itemInfo, dragOptions);
        DragAndDropAccessibilityDelegate dragAndDropAccessibilityDelegate = cellLayout.getDragAndDropAccessibilityDelegate();
        setCurrentSelection(new VirtualNodeInfo(dragAndDropAccessibilityDelegate, dragAndDropAccessibilityDelegate.getVirtualViewAt(fArr[0], fArr[1])));
        this.mLauncher.setDefaultKeyMode(0);
        requestFocus();
    }

    public KeyboardDragAndDropView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mIntList = new ArrayList();
        this.mDelegates = new ArrayList();
        this.mNodes = new ArrayList();
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempNodeInfo = new e(AccessibilityNodeInfo.obtain());
        this.mLauncher = Launcher.getLauncher(context);
        this.mFocusIndicator = new RectFocusIndicator(this);
        setWillNotDraw(false);
    }
}
