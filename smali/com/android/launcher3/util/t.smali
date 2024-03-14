.class public final synthetic Lcom/android/launcher3/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/util/MainThreadInitializedObject;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/t;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/t;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/util/t;->e:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/t;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/t;->e:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iput-object p2, p0, Lcom/android/launcher3/util/t;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/t;->d:I

    iget-object v1, p0, Lcom/android/launcher3/util/t;->f:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/util/t;->e:Lcom/android/launcher3/util/MainThreadInitializedObject;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast v1, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    sget v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->a:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->getObject(Lcom/android/launcher3/util/MainThreadInitializedObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
