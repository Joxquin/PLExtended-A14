.class public final synthetic LM0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/cache/HandlerRunnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/d;->d:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    iput-object p2, p0, LM0/d;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LM0/d;->d:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    iget-object p0, p0, LM0/d;->e:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->a(Lcom/android/launcher3/icons/cache/HandlerRunnable;Ljava/lang/Object;)V

    return-void
.end method
