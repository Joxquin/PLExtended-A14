.class public final Landroidx/lifecycle/K;
.super Landroidx/lifecycle/N;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/N;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/K;->d:Ljava/util/Map;

    return-void
.end method
