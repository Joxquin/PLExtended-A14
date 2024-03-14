.class final Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPreviewScale:F

.field private final mRecommendationTable:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->mRecommendationTable:Ljava/util/List;

    iput p2, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->mPreviewScale:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->mPreviewScale:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->mRecommendationTable:Ljava/util/List;

    return-object p0
.end method
