.class public final Lcom/android/systemui/shared/condition/Monitor_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# instance fields
.field private final executorProvider:Ld3/a;


# direct methods
.method public constructor <init>(Ld3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor_Factory;->executorProvider:Ld3/a;

    return-void
.end method

.method public static create(Ld3/a;)Lcom/android/systemui/shared/condition/Monitor_Factory;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/condition/Monitor_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/condition/Monitor_Factory;-><init>(Ld3/a;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/concurrent/Executor;)Lcom/android/systemui/shared/condition/Monitor;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/condition/Monitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/condition/Monitor;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/shared/condition/Monitor;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor_Factory;->executorProvider:Ld3/a;

    invoke-interface {p0}, Ld3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/android/systemui/shared/condition/Monitor_Factory;->newInstance(Ljava/util/concurrent/Executor;)Lcom/android/systemui/shared/condition/Monitor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shared/condition/Monitor_Factory;->get()Lcom/android/systemui/shared/condition/Monitor;

    move-result-object p0

    return-object p0
.end method
