.class public Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.super Lk/s;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:Z

.field public final j:Lk/K0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04006c

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lk/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lk/K0;

    invoke-direct {p1, p0}, Lk/K0;-><init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->j:Lk/K0;

    .line 5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->h:I

    return-void
.end method


# virtual methods
.method public final enoughToFilter()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->h:I

    if-lez v0, :cond_1

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Lk/s;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->j:Lk/K0;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->j:Lk/K0;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public final onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v4, 0x3c0

    if-lt v2, v4, :cond_0

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_0

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/16 v1, 0x100

    goto :goto_1

    :cond_0
    const/16 v1, 0x258

    if-ge v2, v1, :cond_2

    const/16 v1, 0x280

    if-lt v2, v1, :cond_1

    const/16 v1, 0x1e0

    if-lt v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0xc0

    :goto_1
    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setMinWidth(I)V

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final performCompletion()V
    .locals 0

    return-void
.end method

.method public final replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final setThreshold(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->h:I

    return-void
.end method
