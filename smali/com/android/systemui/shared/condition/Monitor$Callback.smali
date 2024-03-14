.class public interface abstract Lcom/android/systemui/shared/condition/Monitor$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getConditions()Ljava/util/ArrayList;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract onConditionsChanged(Z)V
.end method
