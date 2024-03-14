package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean OPTIMIZE_HEIGHT_CHANGE = false;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-2.2.0-alpha04";
    private static x sSharedValues;
    SparseArray mChildrenByIds;
    private ArrayList mConstraintHelpers;
    protected i mConstraintLayoutSpec;
    private q mConstraintSet;
    private int mConstraintSetId;
    private HashMap mDesignIds;
    protected boolean mDirtyHierarchy;
    private int mLastMeasureHeight;
    int mLastMeasureHeightMode;
    int mLastMeasureHeightSize;
    private int mLastMeasureWidth;
    int mLastMeasureWidthMode;
    int mLastMeasureWidthSize;
    protected v.g mLayoutWidget;
    private int mMaxHeight;
    private int mMaxWidth;
    e mMeasurer;
    private t.g mMetrics;
    private int mMinHeight;
    private int mMinWidth;
    private ArrayList mModifiers;
    private int mOnMeasureHeightMeasureSpec;
    private int mOnMeasureWidthMeasureSpec;
    private int mOptimizationLevel;
    private SparseArray mTempMapIdToWidget;

    public ConstraintLayout(Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray();
        this.mConstraintHelpers = new ArrayList(4);
        this.mLayoutWidget = new v.g();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = USE_CONSTRAINTS_HELPER;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new e(this, this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(null, 0, 0);
    }

    public static /* synthetic */ t.g access$000(ConstraintLayout constraintLayout) {
        constraintLayout.getClass();
        return null;
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return max2 > 0 ? max2 : max;
    }

    public static x getSharedValues() {
        if (sSharedValues == null) {
            sSharedValues = new x();
        }
        return sSharedValues;
    }

    private v.f getTargetWidget(int i4) {
        if (i4 == 0) {
            return this.mLayoutWidget;
        }
        View view = (View) this.mChildrenByIds.get(i4);
        if (view == null && (view = findViewById(i4)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        return ((d) view.getLayoutParams()).f2852q0;
    }

    private void init(AttributeSet attributeSet, int i4, int i5) {
        v.g gVar = this.mLayoutWidget;
        gVar.f12516i0 = this;
        e eVar = this.mMeasurer;
        gVar.f12560w0 = eVar;
        gVar.f12558u0.f12707f = eVar;
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, w.f3021b, i4, i5);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = obtainStyledAttributes.getIndex(i6);
                if (index == 16) {
                    this.mMinWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == 17) {
                    this.mMinHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == 14) {
                    this.mMaxWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == 15) {
                    this.mMaxHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == 113) {
                    this.mOptimizationLevel = obtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == 56) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        q qVar = new q();
                        this.mConstraintSet = qVar;
                        qVar.g(resourceId2, getContext());
                    } catch (Resources.NotFoundException unused2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        v.g gVar2 = this.mLayoutWidget;
        gVar2.f12548F0 = this.mOptimizationLevel;
        t.f.f12305p = gVar2.W(512);
    }

    private void markHierarchyDirty() {
        this.mDirtyHierarchy = USE_CONSTRAINTS_HELPER;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    private void setChildrenConstraints() {
        String str;
        int g4;
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        int i4 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            v.f viewWidget = getViewWidget(getChildAt(i5));
            if (viewWidget != null) {
                viewWidget.D();
            }
        }
        int i6 = -1;
        if (isInEditMode) {
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    if (indexOf != -1) {
                        resourceName = resourceName.substring(indexOf + 1);
                    }
                    getTargetWidget(childAt.getId()).f12520k0 = resourceName;
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        int i8 = 1;
        if (this.mConstraintSetId != -1) {
            int i9 = 0;
            while (i9 < childCount) {
                View childAt2 = getChildAt(i9);
                if (childAt2.getId() == this.mConstraintSetId && (childAt2 instanceof s)) {
                    s sVar = (s) childAt2;
                    if (sVar.f3018d == null) {
                        sVar.f3018d = new q();
                    }
                    q qVar = sVar.f3018d;
                    qVar.getClass();
                    int childCount2 = sVar.getChildCount();
                    HashMap hashMap = qVar.f3004c;
                    hashMap.clear();
                    int i10 = i4;
                    while (i10 < childCount2) {
                        View childAt3 = sVar.getChildAt(i10);
                        r rVar = (r) childAt3.getLayoutParams();
                        int id = childAt3.getId();
                        if (qVar.f3003b && id == i6) {
                            throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                        }
                        if (!hashMap.containsKey(Integer.valueOf(id))) {
                            hashMap.put(Integer.valueOf(id), new l());
                        }
                        l lVar = (l) hashMap.get(Integer.valueOf(id));
                        if (lVar != null) {
                            if (childAt3 instanceof b) {
                                b bVar = (b) childAt3;
                                lVar.c(id, rVar);
                                if (bVar instanceof Barrier) {
                                    m mVar = lVar.f2900d;
                                    mVar.f2945h0 = i8;
                                    Barrier barrier = (Barrier) bVar;
                                    mVar.f2941f0 = barrier.f2766k;
                                    mVar.f2947i0 = Arrays.copyOf(barrier.f2785d, barrier.f2786e);
                                    mVar.f2943g0 = barrier.f2768m.f12445w0;
                                }
                            }
                            lVar.c(id, rVar);
                        }
                        i10++;
                        i6 = -1;
                        i8 = 1;
                    }
                    this.mConstraintSet = sVar.f3018d;
                }
                i9++;
                i4 = 0;
                i6 = -1;
                i8 = 1;
            }
        }
        q qVar2 = this.mConstraintSet;
        if (qVar2 != null) {
            qVar2.b(this);
        }
        this.mLayoutWidget.f12627s0.clear();
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i11 = 0; i11 < size; i11++) {
                b bVar2 = (b) this.mConstraintHelpers.get(i11);
                if (bVar2.isInEditMode()) {
                    bVar2.j(bVar2.f2789h);
                }
                v.l lVar2 = bVar2.f2788g;
                if (lVar2 != null) {
                    lVar2.f12614t0 = 0;
                    Arrays.fill(lVar2.f12613s0, (Object) null);
                    for (int i12 = 0; i12 < bVar2.f2786e; i12++) {
                        int i13 = bVar2.f2785d[i12];
                        View viewById = getViewById(i13);
                        if (viewById == null && (g4 = bVar2.g(this, (str = (String) bVar2.f2791j.get(Integer.valueOf(i13))))) != 0) {
                            bVar2.f2785d[i12] = g4;
                            bVar2.f2791j.put(Integer.valueOf(g4), str);
                            viewById = getViewById(g4);
                        }
                        if (viewById != null) {
                            v.l lVar3 = bVar2.f2788g;
                            v.f viewWidget2 = getViewWidget(viewById);
                            lVar3.getClass();
                            if (viewWidget2 != lVar3 && viewWidget2 != null) {
                                int i14 = lVar3.f12614t0 + 1;
                                v.f[] fVarArr = lVar3.f12613s0;
                                if (i14 > fVarArr.length) {
                                    lVar3.f12613s0 = (v.f[]) Arrays.copyOf(fVarArr, fVarArr.length * 2);
                                }
                                v.f[] fVarArr2 = lVar3.f12613s0;
                                int i15 = lVar3.f12614t0;
                                fVarArr2[i15] = viewWidget2;
                                lVar3.f12614t0 = i15 + 1;
                            }
                        }
                    }
                    bVar2.f2788g.a();
                }
            }
        }
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt4 = getChildAt(i16);
            if (childAt4 instanceof u) {
                u uVar = (u) childAt4;
                uVar.getClass();
                View findViewById = findViewById(0);
                uVar.f3019d = findViewById;
                if (findViewById != null) {
                    ((d) findViewById.getLayoutParams()).f2830f0 = USE_CONSTRAINTS_HELPER;
                    uVar.f3019d.setVisibility(0);
                    uVar.setVisibility(0);
                }
            }
        }
        this.mTempMapIdToWidget.clear();
        this.mTempMapIdToWidget.put(0, this.mLayoutWidget);
        this.mTempMapIdToWidget.put(getId(), this.mLayoutWidget);
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt5 = getChildAt(i17);
            this.mTempMapIdToWidget.put(childAt5.getId(), getViewWidget(childAt5));
        }
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt6 = getChildAt(i18);
            v.f viewWidget3 = getViewWidget(childAt6);
            if (viewWidget3 != null) {
                d dVar = (d) childAt6.getLayoutParams();
                v.g gVar = this.mLayoutWidget;
                gVar.f12627s0.add(viewWidget3);
                v.f fVar = viewWidget3.f12495W;
                if (fVar != null) {
                    ((v.o) fVar).f12627s0.remove(viewWidget3);
                    viewWidget3.D();
                }
                viewWidget3.f12495W = gVar;
                applyConstraintsFromLayoutParams(isInEditMode, childAt6, viewWidget3, dVar, this.mTempMapIdToWidget);
            }
        }
    }

    private void setWidgetBaseline(v.f fVar, d dVar, SparseArray sparseArray, int i4, ConstraintAnchor$Type constraintAnchor$Type) {
        View view = (View) this.mChildrenByIds.get(i4);
        v.f fVar2 = (v.f) sparseArray.get(i4);
        if (fVar2 == null || view == null || !(view.getLayoutParams() instanceof d)) {
            return;
        }
        dVar.f2824c0 = USE_CONSTRAINTS_HELPER;
        ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.BASELINE;
        if (constraintAnchor$Type == constraintAnchor$Type2) {
            d dVar2 = (d) view.getLayoutParams();
            dVar2.f2824c0 = USE_CONSTRAINTS_HELPER;
            dVar2.f2852q0.f12478F = USE_CONSTRAINTS_HELPER;
        }
        fVar.j(constraintAnchor$Type2).b(fVar2.j(constraintAnchor$Type), dVar.f2796D, dVar.f2795C, USE_CONSTRAINTS_HELPER);
        fVar.f12478F = USE_CONSTRAINTS_HELPER;
        fVar.j(ConstraintAnchor$Type.TOP).j();
        fVar.j(ConstraintAnchor$Type.BOTTOM).j();
    }

    private boolean updateHierarchy() {
        int childCount = getChildCount();
        boolean z4 = false;
        int i4 = 0;
        while (true) {
            if (i4 >= childCount) {
                break;
            } else if (getChildAt(i4).isLayoutRequested()) {
                z4 = USE_CONSTRAINTS_HELPER;
                break;
            } else {
                i4++;
            }
        }
        if (z4) {
            setChildrenConstraints();
        }
        return z4;
    }

    public void addValueModifier(f fVar) {
        if (this.mModifiers == null) {
            this.mModifiers = new ArrayList();
        }
        this.mModifiers.add(fVar);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:154:0x02ed -> B:155:0x02ee). Please submit an issue!!! */
    public void applyConstraintsFromLayoutParams(boolean z4, View view, v.f fVar, d dVar, SparseArray sparseArray) {
        ConstraintAnchor$Type constraintAnchor$Type;
        ConstraintAnchor$Type constraintAnchor$Type2;
        ConstraintAnchor$Type constraintAnchor$Type3;
        v.f fVar2;
        v.f fVar3;
        v.f fVar4;
        v.f fVar5;
        int i4;
        int i5;
        float f4;
        int i6;
        ConstraintAnchor$Type constraintAnchor$Type4;
        ConstraintAnchor$Type constraintAnchor$Type5;
        ConstraintAnchor$Type constraintAnchor$Type6;
        dVar.a();
        fVar.f12518j0 = view.getVisibility();
        if (dVar.f2830f0) {
            fVar.f12479G = USE_CONSTRAINTS_HELPER;
            fVar.f12518j0 = 8;
        }
        fVar.f12516i0 = view;
        if (view instanceof b) {
            ((b) view).i(fVar, this.mLayoutWidget.f12561x0);
        }
        int i7 = -1;
        if (dVar.f2826d0) {
            v.j jVar = (v.j) fVar;
            int i8 = dVar.f2846n0;
            int i9 = dVar.f2848o0;
            float f5 = dVar.f2850p0;
            int i10 = (f5 > (-1.0f) ? 1 : (f5 == (-1.0f) ? 0 : -1));
            if (i10 != 0) {
                if (i10 > 0) {
                    jVar.f12607s0 = f5;
                    jVar.f12608t0 = -1;
                    jVar.f12609u0 = -1;
                    return;
                }
                return;
            } else if (i8 != -1) {
                if (i8 > -1) {
                    jVar.f12607s0 = -1.0f;
                    jVar.f12608t0 = i8;
                    jVar.f12609u0 = -1;
                    return;
                }
                return;
            } else if (i9 == -1 || i9 <= -1) {
                return;
            } else {
                jVar.f12607s0 = -1.0f;
                jVar.f12608t0 = -1;
                jVar.f12609u0 = i9;
                return;
            }
        }
        int i11 = dVar.f2832g0;
        int i12 = dVar.f2834h0;
        int i13 = dVar.f2836i0;
        int i14 = dVar.f2838j0;
        int i15 = dVar.f2840k0;
        int i16 = dVar.f2842l0;
        float f6 = dVar.f2844m0;
        int i17 = dVar.f2849p;
        ConstraintAnchor$Type constraintAnchor$Type7 = ConstraintAnchor$Type.RIGHT;
        ConstraintAnchor$Type constraintAnchor$Type8 = ConstraintAnchor$Type.LEFT;
        ConstraintAnchor$Type constraintAnchor$Type9 = ConstraintAnchor$Type.BOTTOM;
        ConstraintAnchor$Type constraintAnchor$Type10 = ConstraintAnchor$Type.TOP;
        if (i17 != -1) {
            v.f fVar6 = (v.f) sparseArray.get(i17);
            if (fVar6 != null) {
                float f7 = dVar.f2853r;
                int i18 = dVar.f2851q;
                ConstraintAnchor$Type constraintAnchor$Type11 = ConstraintAnchor$Type.CENTER;
                constraintAnchor$Type4 = constraintAnchor$Type8;
                constraintAnchor$Type5 = constraintAnchor$Type7;
                constraintAnchor$Type6 = constraintAnchor$Type10;
                fVar.w(constraintAnchor$Type11, fVar6, constraintAnchor$Type11, i18, 0);
                fVar.f12477E = f7;
            } else {
                constraintAnchor$Type4 = constraintAnchor$Type8;
                constraintAnchor$Type5 = constraintAnchor$Type7;
                constraintAnchor$Type6 = constraintAnchor$Type10;
            }
            constraintAnchor$Type = constraintAnchor$Type6;
            constraintAnchor$Type3 = constraintAnchor$Type5;
            constraintAnchor$Type2 = constraintAnchor$Type4;
        } else {
            if (i11 != -1) {
                v.f fVar7 = (v.f) sparseArray.get(i11);
                if (fVar7 != null) {
                    constraintAnchor$Type = constraintAnchor$Type10;
                    constraintAnchor$Type2 = constraintAnchor$Type8;
                    constraintAnchor$Type3 = constraintAnchor$Type7;
                    fVar.w(constraintAnchor$Type8, fVar7, constraintAnchor$Type8, ((ViewGroup.MarginLayoutParams) dVar).leftMargin, i15);
                } else {
                    constraintAnchor$Type = constraintAnchor$Type10;
                    constraintAnchor$Type2 = constraintAnchor$Type8;
                    constraintAnchor$Type3 = constraintAnchor$Type7;
                }
            } else {
                constraintAnchor$Type = constraintAnchor$Type10;
                constraintAnchor$Type2 = constraintAnchor$Type8;
                constraintAnchor$Type3 = constraintAnchor$Type7;
                if (i12 != -1 && (fVar2 = (v.f) sparseArray.get(i12)) != null) {
                    fVar.w(constraintAnchor$Type2, fVar2, constraintAnchor$Type3, ((ViewGroup.MarginLayoutParams) dVar).leftMargin, i15);
                }
            }
            if (i13 != -1) {
                v.f fVar8 = (v.f) sparseArray.get(i13);
                if (fVar8 != null) {
                    fVar.w(constraintAnchor$Type3, fVar8, constraintAnchor$Type2, ((ViewGroup.MarginLayoutParams) dVar).rightMargin, i16);
                }
            } else if (i14 != -1 && (fVar3 = (v.f) sparseArray.get(i14)) != null) {
                fVar.w(constraintAnchor$Type3, fVar3, constraintAnchor$Type3, ((ViewGroup.MarginLayoutParams) dVar).rightMargin, i16);
            }
            int i19 = dVar.f2835i;
            if (i19 != -1) {
                v.f fVar9 = (v.f) sparseArray.get(i19);
                if (fVar9 != null) {
                    fVar.w(constraintAnchor$Type, fVar9, constraintAnchor$Type, ((ViewGroup.MarginLayoutParams) dVar).topMargin, dVar.f2859x);
                }
            } else {
                int i20 = dVar.f2837j;
                if (i20 != -1 && (fVar4 = (v.f) sparseArray.get(i20)) != null) {
                    fVar.w(constraintAnchor$Type, fVar4, constraintAnchor$Type9, ((ViewGroup.MarginLayoutParams) dVar).topMargin, dVar.f2859x);
                }
            }
            int i21 = dVar.f2839k;
            if (i21 != -1) {
                v.f fVar10 = (v.f) sparseArray.get(i21);
                if (fVar10 != null) {
                    fVar.w(constraintAnchor$Type9, fVar10, constraintAnchor$Type, ((ViewGroup.MarginLayoutParams) dVar).bottomMargin, dVar.f2861z);
                }
            } else {
                int i22 = dVar.f2841l;
                if (i22 != -1 && (fVar5 = (v.f) sparseArray.get(i22)) != null) {
                    fVar.w(constraintAnchor$Type9, fVar5, constraintAnchor$Type9, ((ViewGroup.MarginLayoutParams) dVar).bottomMargin, dVar.f2861z);
                }
            }
            int i23 = dVar.f2843m;
            if (i23 != -1) {
                setWidgetBaseline(fVar, dVar, sparseArray, i23, ConstraintAnchor$Type.BASELINE);
            } else {
                int i24 = dVar.f2845n;
                if (i24 != -1) {
                    setWidgetBaseline(fVar, dVar, sparseArray, i24, constraintAnchor$Type);
                } else {
                    int i25 = dVar.f2847o;
                    if (i25 != -1) {
                        setWidgetBaseline(fVar, dVar, sparseArray, i25, constraintAnchor$Type9);
                    }
                }
            }
            if (f6 >= 0.0f) {
                fVar.f12512g0 = f6;
            }
            float f8 = dVar.f2798F;
            if (f8 >= 0.0f) {
                fVar.f12514h0 = f8;
            }
        }
        if (z4 && ((i6 = dVar.f2812T) != -1 || dVar.f2813U != -1)) {
            int i26 = dVar.f2813U;
            fVar.f12502b0 = i6;
            fVar.f12504c0 = i26;
        }
        boolean z5 = dVar.f2820a0;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.FIXED;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        if (z5) {
            fVar.M(constraintWidget$DimensionBehaviour3);
            fVar.O(((ViewGroup.MarginLayoutParams) dVar).width);
            if (((ViewGroup.MarginLayoutParams) dVar).width == -2) {
                fVar.M(constraintWidget$DimensionBehaviour2);
            }
        } else if (((ViewGroup.MarginLayoutParams) dVar).width == -1) {
            if (dVar.f2815W) {
                fVar.M(constraintWidget$DimensionBehaviour4);
            } else {
                fVar.M(constraintWidget$DimensionBehaviour);
            }
            fVar.j(constraintAnchor$Type2).f12470g = ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
            fVar.j(constraintAnchor$Type3).f12470g = ((ViewGroup.MarginLayoutParams) dVar).rightMargin;
        } else {
            fVar.M(constraintWidget$DimensionBehaviour4);
            fVar.O(0);
        }
        if (dVar.f2822b0) {
            fVar.N(constraintWidget$DimensionBehaviour3);
            fVar.L(((ViewGroup.MarginLayoutParams) dVar).height);
            if (((ViewGroup.MarginLayoutParams) dVar).height == -2) {
                fVar.N(constraintWidget$DimensionBehaviour2);
            }
        } else if (((ViewGroup.MarginLayoutParams) dVar).height == -1) {
            if (dVar.f2816X) {
                fVar.N(constraintWidget$DimensionBehaviour4);
            } else {
                fVar.N(constraintWidget$DimensionBehaviour);
            }
            fVar.j(constraintAnchor$Type).f12470g = ((ViewGroup.MarginLayoutParams) dVar).topMargin;
            fVar.j(constraintAnchor$Type9).f12470g = ((ViewGroup.MarginLayoutParams) dVar).bottomMargin;
        } else {
            fVar.N(constraintWidget$DimensionBehaviour4);
            fVar.L(0);
        }
        String str = dVar.f2799G;
        if (str == null || str.length() == 0) {
            fVar.f12498Z = 0.0f;
        } else {
            int length = str.length();
            int indexOf = str.indexOf(44);
            if (indexOf <= 0 || indexOf >= length - 1) {
                i4 = 1;
                i5 = 0;
            } else {
                String substring = str.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    i7 = 0;
                } else if (substring.equalsIgnoreCase("H")) {
                    i4 = 1;
                    i7 = 1;
                    i5 = indexOf + i4;
                }
                i4 = 1;
                i5 = indexOf + i4;
            }
            int indexOf2 = str.indexOf(58);
            if (indexOf2 < 0 || indexOf2 >= length - i4) {
                String substring2 = str.substring(i5);
                if (substring2.length() > 0) {
                    f4 = Float.parseFloat(substring2);
                }
                f4 = 0.0f;
            } else {
                String substring3 = str.substring(i5, indexOf2);
                String substring4 = str.substring(indexOf2 + i4);
                if (substring3.length() > 0 && substring4.length() > 0) {
                    float parseFloat = Float.parseFloat(substring3);
                    float parseFloat2 = Float.parseFloat(substring4);
                    if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                        f4 = i7 == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                    }
                }
                f4 = 0.0f;
            }
            if (f4 > 0.0f) {
                fVar.f12498Z = f4;
                fVar.f12500a0 = i7;
            }
        }
        float f9 = dVar.f2800H;
        float[] fArr = fVar.f12526n0;
        fArr[0] = f9;
        fArr[1] = dVar.f2801I;
        fVar.f12522l0 = dVar.f2802J;
        fVar.f12524m0 = dVar.f2803K;
        int i27 = dVar.f2818Z;
        if (i27 >= 0 && i27 <= 3) {
            fVar.f12533r = i27;
        }
        int i28 = dVar.f2804L;
        int i29 = dVar.f2806N;
        int i30 = dVar.f2808P;
        float f10 = dVar.f2810R;
        fVar.f12535s = i28;
        fVar.f12538v = i29;
        if (i30 == Integer.MAX_VALUE) {
            i30 = 0;
        }
        fVar.f12539w = i30;
        fVar.f12540x = f10;
        if (f10 > 0.0f && f10 < 1.0f && i28 == 0) {
            fVar.f12535s = 2;
        }
        int i31 = dVar.f2805M;
        int i32 = dVar.f2807O;
        int i33 = dVar.f2809Q;
        float f11 = dVar.f2811S;
        fVar.f12536t = i31;
        fVar.f12541y = i32;
        fVar.f12542z = i33 != Integer.MAX_VALUE ? i33 : 0;
        fVar.f12473A = f11;
        if (f11 <= 0.0f || f11 >= 1.0f || i31 != 0) {
            return;
        }
        fVar.f12536t = 2;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                ((b) this.mConstraintHelpers.get(i4)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i6 = (int) ((parseInt / 1080.0f) * width);
                        int i7 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f4 = i6;
                        float f5 = i7;
                        float f6 = i6 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f4, f5, f6, f5, paint);
                        float parseInt4 = i7 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f6, f5, f6, parseInt4, paint);
                        canvas.drawLine(f6, parseInt4, f4, parseInt4, paint);
                        canvas.drawLine(f4, parseInt4, f4, f5, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f4, f5, f6, parseInt4, paint);
                        canvas.drawLine(f4, parseInt4, f6, f5, paint);
                    }
                }
            }
        }
    }

    public boolean dynamicUpdateConstraints(int i4, int i5) {
        boolean z4 = false;
        if (this.mModifiers == null) {
            return false;
        }
        View.MeasureSpec.getSize(i4);
        View.MeasureSpec.getSize(i5);
        Iterator it = this.mModifiers.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            Iterator it2 = this.mLayoutWidget.f12627s0.iterator();
            while (it2.hasNext()) {
                View view = (View) ((v.f) it2.next()).f12516i0;
                view.getId();
                d dVar = (d) view.getLayoutParams();
                z4 |= fVar.a();
            }
        }
        return z4;
    }

    public void fillMetrics(t.g gVar) {
        this.mLayoutWidget.f12562y0.getClass();
    }

    @Override // android.view.View
    public void forceLayout() {
        markHierarchyDirty();
        super.forceLayout();
    }

    public Object getDesignInformation(int i4, Object obj) {
        if (i4 == 0 && (obj instanceof String)) {
            String str = (String) obj;
            HashMap hashMap = this.mDesignIds;
            if (hashMap == null || !hashMap.containsKey(str)) {
                return null;
            }
            return this.mDesignIds.get(str);
        }
        return null;
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.f12548F0;
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        if (this.mLayoutWidget.f12519k == null) {
            int id2 = getId();
            if (id2 != -1) {
                this.mLayoutWidget.f12519k = getContext().getResources().getResourceEntryName(id2);
            } else {
                this.mLayoutWidget.f12519k = "parent";
            }
        }
        v.g gVar = this.mLayoutWidget;
        if (gVar.f12520k0 == null) {
            gVar.f12520k0 = gVar.f12519k;
            Log.v(TAG, " setDebugName " + this.mLayoutWidget.f12520k0);
        }
        Iterator it = this.mLayoutWidget.f12627s0.iterator();
        while (it.hasNext()) {
            v.f fVar = (v.f) it.next();
            View view = (View) fVar.f12516i0;
            if (view != null) {
                if (fVar.f12519k == null && (id = view.getId()) != -1) {
                    fVar.f12519k = getContext().getResources().getResourceEntryName(id);
                }
                if (fVar.f12520k0 == null) {
                    fVar.f12520k0 = fVar.f12519k;
                    Log.v(TAG, " setDebugName " + fVar.f12520k0);
                }
            }
        }
        this.mLayoutWidget.o(sb);
        return sb.toString();
    }

    public View getViewById(int i4) {
        return (View) this.mChildrenByIds.get(i4);
    }

    public final v.f getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view != null) {
            if (view.getLayoutParams() instanceof d) {
                return ((d) view.getLayoutParams()).f2852q0;
            }
            view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
            if (view.getLayoutParams() instanceof d) {
                return ((d) view.getLayoutParams()).f2852q0;
            }
            return null;
        }
        return null;
    }

    public boolean isRtl() {
        if (((getContext().getApplicationInfo().flags & QuickStepContract.SYSUI_STATE_BACK_DISABLED) != 0) && 1 == getLayoutDirection()) {
            return USE_CONSTRAINTS_HELPER;
        }
        return false;
    }

    public void loadLayoutDescription(int i4) {
        if (i4 == 0) {
            this.mConstraintLayoutSpec = null;
            return;
        }
        try {
            this.mConstraintLayoutSpec = new i(getContext(), this, i4);
        } catch (Resources.NotFoundException unused) {
            this.mConstraintLayoutSpec = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        View view;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            d dVar = (d) childAt.getLayoutParams();
            v.f fVar = dVar.f2852q0;
            if ((childAt.getVisibility() != 8 || dVar.f2826d0 || dVar.f2828e0 || isInEditMode) && !dVar.f2830f0) {
                int s4 = fVar.s();
                int t4 = fVar.t();
                int r4 = fVar.r() + s4;
                int l4 = fVar.l() + t4;
                childAt.layout(s4, t4, r4, l4);
                if ((childAt instanceof u) && (view = ((u) childAt).f3019d) != null) {
                    view.setVisibility(0);
                    view.layout(s4, t4, r4, l4);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i9 = 0; i9 < size; i9++) {
                ((b) this.mConstraintHelpers.get(i9)).m();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i4, int i5) {
        boolean dynamicUpdateConstraints = this.mDirtyHierarchy | dynamicUpdateConstraints(i4, i5);
        this.mDirtyHierarchy = dynamicUpdateConstraints;
        if (!dynamicUpdateConstraints) {
            int childCount = getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 >= childCount) {
                    break;
                } else if (getChildAt(i6).isLayoutRequested()) {
                    this.mDirtyHierarchy = USE_CONSTRAINTS_HELPER;
                    break;
                } else {
                    i6++;
                }
            }
        }
        this.mOnMeasureWidthMeasureSpec = i4;
        this.mOnMeasureHeightMeasureSpec = i5;
        this.mLayoutWidget.f12561x0 = isRtl();
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (updateHierarchy()) {
                v.g gVar = this.mLayoutWidget;
                gVar.f12557t0.c(gVar);
            }
        }
        this.mLayoutWidget.f12562y0.getClass();
        resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, i4, i5);
        int r4 = this.mLayoutWidget.r();
        int l4 = this.mLayoutWidget.l();
        v.g gVar2 = this.mLayoutWidget;
        resolveMeasuredDimension(i4, i5, r4, l4, gVar2.f12549G0, gVar2.f12550H0);
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        v.f viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof v.j)) {
            d dVar = (d) view.getLayoutParams();
            v.j jVar = new v.j();
            dVar.f2852q0 = jVar;
            dVar.f2826d0 = USE_CONSTRAINTS_HELPER;
            jVar.S(dVar.f2814V);
        }
        if (view instanceof b) {
            b bVar = (b) view;
            bVar.n();
            ((d) view.getLayoutParams()).f2828e0 = USE_CONSTRAINTS_HELPER;
            if (!this.mConstraintHelpers.contains(bVar)) {
                this.mConstraintHelpers.add(bVar);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = USE_CONSTRAINTS_HELPER;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mChildrenByIds.remove(view.getId());
        v.f viewWidget = getViewWidget(view);
        this.mLayoutWidget.f12627s0.remove(viewWidget);
        viewWidget.D();
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = USE_CONSTRAINTS_HELPER;
    }

    public void parseLayoutDescription(int i4) {
        this.mConstraintLayoutSpec = new i(getContext(), this, i4);
    }

    public void removeValueModifier(f fVar) {
        if (fVar == null) {
            return;
        }
        this.mModifiers.remove(fVar);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        markHierarchyDirty();
        super.requestLayout();
    }

    public void resolveMeasuredDimension(int i4, int i5, int i6, int i7, boolean z4, boolean z5) {
        e eVar = this.mMeasurer;
        int i8 = eVar.f2866e;
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(i6 + eVar.f2865d, i4, 0);
        int min = Math.min(this.mMaxWidth, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.mMaxHeight, ViewGroup.resolveSizeAndState(i7 + i8, i5, 0) & 16777215);
        if (z4) {
            min |= QuickStepContract.SYSUI_STATE_IMMERSIVE_MODE;
        }
        if (z5) {
            min2 |= QuickStepContract.SYSUI_STATE_IMMERSIVE_MODE;
        }
        setMeasuredDimension(min, min2);
        this.mLastMeasureWidth = min;
        this.mLastMeasureHeight = min2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0061, code lost:
        if (isRtl() != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resolveSystem(v.g r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 1672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.resolveSystem(v.g, int, int, int):void");
    }

    public void setConstraintSet(q qVar) {
        this.mConstraintSet = qVar;
    }

    public void setDesignInformation(int i4, Object obj, Object obj2) {
        if (i4 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.mDesignIds.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int i4) {
        this.mChildrenByIds.remove(getId());
        super.setId(i4);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i4) {
        if (i4 == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i4;
        requestLayout();
    }

    public void setMaxWidth(int i4) {
        if (i4 == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i4;
        requestLayout();
    }

    public void setMinHeight(int i4) {
        if (i4 == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i4;
        requestLayout();
    }

    public void setMinWidth(int i4) {
        if (i4 == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i4;
        requestLayout();
    }

    public void setOnConstraintsChanged(t tVar) {
        i iVar = this.mConstraintLayoutSpec;
        if (iVar != null) {
            iVar.getClass();
        }
    }

    public void setOptimizationLevel(int i4) {
        this.mOptimizationLevel = i4;
        v.g gVar = this.mLayoutWidget;
        gVar.f12548F0 = i4;
        t.f.f12305p = gVar.W(512);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSelfDimensionBehaviour(v.g r9, int r10, int r11, int r12, int r13) {
        /*
            r8 = this;
            androidx.constraintlayout.widget.e r0 = r8.mMeasurer
            int r1 = r0.f2866e
            int r0 = r0.f2865d
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r2 = androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour.FIXED
            int r3 = r8.getChildCount()
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r4 = androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT
            r5 = 1073741824(0x40000000, float:2.0)
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = 0
            if (r10 == r6) goto L31
            if (r10 == 0) goto L24
            if (r10 == r5) goto L1b
            r10 = r2
            goto L2e
        L1b:
            int r10 = r8.mMaxWidth
            int r10 = r10 - r0
            int r10 = java.lang.Math.min(r10, r11)
            r11 = r2
            goto L3b
        L24:
            if (r3 != 0) goto L2d
            int r10 = r8.mMinWidth
            int r11 = java.lang.Math.max(r7, r10)
            goto L39
        L2d:
            r10 = r4
        L2e:
            r11 = r10
            r10 = r7
            goto L3b
        L31:
            if (r3 != 0) goto L39
            int r10 = r8.mMinWidth
            int r11 = java.lang.Math.max(r7, r10)
        L39:
            r10 = r11
            r11 = r4
        L3b:
            if (r12 == r6) goto L56
            if (r12 == 0) goto L4a
            if (r12 == r5) goto L42
            goto L54
        L42:
            int r12 = r8.mMaxHeight
            int r12 = r12 - r1
            int r12 = java.lang.Math.min(r12, r13)
            goto L60
        L4a:
            if (r3 != 0) goto L53
            int r12 = r8.mMinHeight
            int r13 = java.lang.Math.max(r7, r12)
            goto L5e
        L53:
            r2 = r4
        L54:
            r12 = r7
            goto L60
        L56:
            if (r3 != 0) goto L5e
            int r12 = r8.mMinHeight
            int r13 = java.lang.Math.max(r7, r12)
        L5e:
            r12 = r13
            r2 = r4
        L60:
            int r13 = r9.r()
            r3 = 1
            if (r10 != r13) goto L6d
            int r13 = r9.l()
            if (r12 == r13) goto L71
        L6d:
            w.g r13 = r9.f12558u0
            r13.f12704c = r3
        L71:
            r9.f12502b0 = r7
            r9.f12504c0 = r7
            int r13 = r8.mMaxWidth
            int r13 = r13 - r0
            int[] r4 = r9.f12476D
            r4[r7] = r13
            int r13 = r8.mMaxHeight
            int r13 = r13 - r1
            r4[r3] = r13
            r9.f12508e0 = r7
            r9.f12510f0 = r7
            r9.M(r11)
            r9.O(r10)
            r9.N(r2)
            r9.L(r12)
            int r10 = r8.mMinWidth
            int r10 = r10 - r0
            if (r10 >= 0) goto L99
            r9.f12508e0 = r7
            goto L9b
        L99:
            r9.f12508e0 = r10
        L9b:
            int r8 = r8.mMinHeight
            int r8 = r8 - r1
            if (r8 >= 0) goto La3
            r9.f12510f0 = r7
            goto La5
        La3:
            r9.f12510f0 = r8
        La5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.setSelfDimensionBehaviour(v.g, int, int, int, int):void");
    }

    public void setState(int i4, int i5, int i6) {
        i iVar = this.mConstraintLayoutSpec;
        if (iVar != null) {
            float f4 = i5;
            float f5 = i6;
            int i7 = iVar.f2881b;
            SparseArray sparseArray = iVar.f2883d;
            int i8 = 0;
            ConstraintLayout constraintLayout = iVar.f2880a;
            if (i7 == i4) {
                g gVar = i4 == -1 ? (g) sparseArray.valueAt(0) : (g) sparseArray.get(i7);
                int i9 = iVar.f2882c;
                if (i9 == -1 || !((h) gVar.f2871b.get(i9)).a(f4, f5)) {
                    while (true) {
                        ArrayList arrayList = gVar.f2871b;
                        if (i8 >= arrayList.size()) {
                            i8 = -1;
                            break;
                        } else if (((h) arrayList.get(i8)).a(f4, f5)) {
                            break;
                        } else {
                            i8++;
                        }
                    }
                    if (iVar.f2882c == i8) {
                        return;
                    }
                    ArrayList arrayList2 = gVar.f2871b;
                    q qVar = i8 == -1 ? null : ((h) arrayList2.get(i8)).f2879f;
                    if (i8 != -1) {
                        int i10 = ((h) arrayList2.get(i8)).f2878e;
                    }
                    if (qVar == null) {
                        return;
                    }
                    iVar.f2882c = i8;
                    qVar.a(constraintLayout);
                    return;
                }
                return;
            }
            iVar.f2881b = i4;
            g gVar2 = (g) sparseArray.get(i4);
            while (true) {
                ArrayList arrayList3 = gVar2.f2871b;
                if (i8 >= arrayList3.size()) {
                    i8 = -1;
                    break;
                } else if (((h) arrayList3.get(i8)).a(f4, f5)) {
                    break;
                } else {
                    i8++;
                }
            }
            ArrayList arrayList4 = gVar2.f2871b;
            q qVar2 = i8 == -1 ? gVar2.f2873d : ((h) arrayList4.get(i8)).f2879f;
            if (i8 != -1) {
                int i11 = ((h) arrayList4.get(i8)).f2878e;
            }
            if (qVar2 != null) {
                iVar.f2882c = i8;
                qVar2.a(constraintLayout);
                return;
            }
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i4 + ", dim =" + f4 + ", " + f5);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public d generateDefaultLayoutParams() {
        return new d(-2, -2);
    }

    @Override // android.view.ViewGroup
    public d generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new d(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray();
        this.mConstraintHelpers = new ArrayList(4);
        this.mLayoutWidget = new v.g();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = USE_CONSTRAINTS_HELPER;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new e(this, this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mChildrenByIds = new SparseArray();
        this.mConstraintHelpers = new ArrayList(4);
        this.mLayoutWidget = new v.g();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = USE_CONSTRAINTS_HELPER;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new e(this, this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, i4, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mChildrenByIds = new SparseArray();
        this.mConstraintHelpers = new ArrayList(4);
        this.mLayoutWidget = new v.g();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = USE_CONSTRAINTS_HELPER;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray();
        this.mMeasurer = new e(this, this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, i4, i5);
    }
}
