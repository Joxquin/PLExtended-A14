.class public final synthetic Lcom/android/launcher3/views/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/views/ActivityContext;

.field public final synthetic e:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic f:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/f;->d:Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/views/f;->e:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/launcher3/views/f;->f:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/f;->d:Lcom/android/launcher3/views/ActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/views/f;->e:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/launcher3/views/f;->f:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/views/g;

    invoke-direct {v1, v0}, Lcom/android/launcher3/views/g;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
