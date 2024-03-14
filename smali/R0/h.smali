.class public final synthetic LR0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/pm/UserCache;

.field public final synthetic e:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;Lcom/android/launcher3/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/h;->d:Lcom/android/launcher3/pm/UserCache;

    iput-object p2, p0, LR0/h;->e:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, LR0/h;->d:Lcom/android/launcher3/pm/UserCache;

    iget-object p0, p0, LR0/h;->e:Ljava/util/function/BiConsumer;

    invoke-static {v0, p0}, Lcom/android/launcher3/pm/UserCache;->e(Lcom/android/launcher3/pm/UserCache;Ljava/util/function/BiConsumer;)V

    return-void
.end method
