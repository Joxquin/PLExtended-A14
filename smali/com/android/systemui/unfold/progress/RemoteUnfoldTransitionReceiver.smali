.class public final Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lt1/e;
.implements Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final filter:Lv1/g;

.field private final listeners:Ljava/util/Set;

.field private final outputProgressListener:Lv1/b;


# direct methods
.method public constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.unfold.progress.IUnfoldTransitionListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->listeners:Ljava/util/Set;

    new-instance p2, Lv1/b;

    invoke-direct {p2, p0}, Lv1/b;-><init>(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)V

    iput-object p2, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->outputProgressListener:Lv1/b;

    if-eqz p1, :cond_0

    new-instance p1, Lv1/g;

    invoke-direct {p1, p2}, Lv1/g;-><init>(Lv1/b;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->filter:Lv1/g;

    return-void
.end method

.method public static final synthetic access$getFilter$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Lv1/g;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->filter:Lv1/g;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getOutputProgressListener$p(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;)Lv1/b;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->outputProgressListener:Lv1/b;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lt1/d;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->addCallback(Lt1/d;)V

    return-void
.end method

.method public final addCallback(Lt1/d;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->onTransact$com$android$systemui$unfold$progress$IUnfoldTransitionListener$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public final onTransact$com$android$systemui$unfold$progress$IUnfoldTransitionListener$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.android.systemui.unfold.progress.IUnfoldTransitionListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lv1/c;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lv1/c;-><init>(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->executor:Ljava/util/concurrent/Executor;

    new-instance p3, Lv1/d;

    invoke-direct {p3, p0, p1}, Lv1/d;-><init>(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;F)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lv1/c;

    invoke-direct {p2, p0, v1}, Lv1/c;-><init>(Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lt1/d;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/RemoteUnfoldTransitionReceiver;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
