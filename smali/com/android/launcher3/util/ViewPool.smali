.class public final Lcom/android/launcher3/util/ViewPool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentSize:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I

.field private final mParent:Landroid/view/ViewGroup;

.field private final mPool:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    iput p3, p0, Lcom/android/launcher3/util/ViewPool;->mLayoutId:I

    iput-object p2, p0, Lcom/android/launcher3/util/ViewPool;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/ViewPool;->mInflater:Landroid/view/LayoutInflater;

    new-array p2, p4, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/util/ViewPool;->mPool:[Ljava/lang/Object;

    if-lez p5, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/android/launcher3/util/N;

    invoke-direct {p4, p0, p5, p1, p2}, Lcom/android/launcher3/util/N;-><init>(Lcom/android/launcher3/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V

    const-string p0, "ViewPool-init"

    invoke-direct {p3, p4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/launcher3/util/ViewPool;Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    iget-object v1, p0, Lcom/android/launcher3/util/ViewPool;->mPool:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    :goto_0
    return-void
.end method

.method public static b(Lcom/android/launcher3/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/util/ViewPool;->mParent:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/launcher3/util/ViewPool;->mLayoutId:I

    invoke-virtual {p2, v3, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/util/O;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/util/O;-><init>(Lcom/android/launcher3/util/ViewPool;Landroid/view/View;)V

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    iget-object p0, p0, Lcom/android/launcher3/util/ViewPool;->mPool:[Ljava/lang/Object;

    aget-object p0, p0, v0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/util/ViewPool;->mLayoutId:I

    iget-object v2, p0, Lcom/android/launcher3/util/ViewPool;->mInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/android/launcher3/util/ViewPool;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final recycle(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/util/ViewPool$Reusable;

    invoke-interface {v0}, Lcom/android/launcher3/util/ViewPool$Reusable;->onRecycle()V

    iget v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    iget-object v1, p0, Lcom/android/launcher3/util/ViewPool;->mPool:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    :goto_0
    return-void
.end method
