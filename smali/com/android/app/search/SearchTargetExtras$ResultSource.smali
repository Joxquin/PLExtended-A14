.class public final enum Lcom/android/app/search/SearchTargetExtras$ResultSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Lcom/android/app/search/SearchTargetExtras$ResultSource;


# instance fields
.field private final mDataSource:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/app/search/SearchTargetExtras$ResultSource;

    const-string v1, "aiai_search_root"

    const-string v2, "AIAI_SEARCH_ROOT"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/app/search/SearchTargetExtras$ResultSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/app/search/SearchTargetExtras$ResultSource;

    const-string v2, "appsearch_app_preview"

    const-string v3, "APPSEARCH_APP_PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/app/search/SearchTargetExtras$ResultSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/app/search/SearchTargetExtras$ResultSource;

    const-string v3, "appsearch_app_srp_preview"

    const-string v4, "APPSEARCH_APP_SRP_PREVIEW"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4, v3}, Lcom/android/app/search/SearchTargetExtras$ResultSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/app/search/SearchTargetExtras$ResultSource;

    const-string v4, "appsearch_category_srp_preview"

    const-string v5, "APPSEARCH_CATEGORY_SRP_PREVIEW"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v5, v4}, Lcom/android/app/search/SearchTargetExtras$ResultSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/app/search/SearchTargetExtras$ResultSource;

    const-string v5, "appsearch_entity_srp_preview"

    const-string v6, "APPSEARCH_ENTITY_SRP_PREVIEW"

    const/4 v7, 0x4

    invoke-direct {v4, v7, v6, v5}, Lcom/android/app/search/SearchTargetExtras$ResultSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/app/search/SearchTargetExtras$ResultSource;

    move-result-object v0

    sput-object v0, Lcom/android/app/search/SearchTargetExtras$ResultSource;->d:[Lcom/android/app/search/SearchTargetExtras$ResultSource;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/app/search/SearchTargetExtras$ResultSource;->mDataSource:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/app/search/SearchTargetExtras$ResultSource;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/app/search/SearchTargetExtras$ResultSource;->mDataSource:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/app/search/SearchTargetExtras$ResultSource;
    .locals 1

    const-class v0, Lcom/android/app/search/SearchTargetExtras$ResultSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/app/search/SearchTargetExtras$ResultSource;

    return-object p0
.end method

.method public static values()[Lcom/android/app/search/SearchTargetExtras$ResultSource;
    .locals 1

    sget-object v0, Lcom/android/app/search/SearchTargetExtras$ResultSource;->d:[Lcom/android/app/search/SearchTargetExtras$ResultSource;

    invoke-virtual {v0}, [Lcom/android/app/search/SearchTargetExtras$ResultSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/app/search/SearchTargetExtras$ResultSource;

    return-object v0
.end method
